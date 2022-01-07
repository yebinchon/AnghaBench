; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes.c_hermes_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes.c_hermes_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { i32 }

@INTEN = common dso_local global i32 0, align 4
@EVACK = common dso_local global i32 0, align 4
@CMD_BUSY_TIMEOUT = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@HERMES_CMD_BUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EVSTAT = common dso_local global i32 0, align 4
@HERMES_CMD_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*)* @hermes_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hermes_init(%struct.hermes* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hermes*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hermes* %0, %struct.hermes** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.hermes*, %struct.hermes** %3, align 8
  %8 = getelementptr inbounds %struct.hermes, %struct.hermes* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load %struct.hermes*, %struct.hermes** %3, align 8
  %10 = load i32, i32* @INTEN, align 4
  %11 = call i32 @hermes_write_regn(%struct.hermes* %9, i32 %10, i32 0)
  %12 = load %struct.hermes*, %struct.hermes** %3, align 8
  %13 = load i32, i32* @EVACK, align 4
  %14 = call i32 @hermes_write_regn(%struct.hermes* %12, i32 %13, i32 65535)
  %15 = load i32, i32* @CMD_BUSY_TIMEOUT, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.hermes*, %struct.hermes** %3, align 8
  %17 = load i32, i32* @CMD, align 4
  %18 = call i32 @hermes_read_regn(%struct.hermes* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %35, %1
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @HERMES_CMD_BUSY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ %26, %22 ]
  br i1 %28, label %29, label %42

29:                                               ; preds = %27
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 65535
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %54

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %6, align 4
  %38 = call i32 @udelay(i32 1)
  %39 = load %struct.hermes*, %struct.hermes** %3, align 8
  %40 = load i32, i32* @CMD, align 4
  %41 = call i32 @hermes_read_regn(%struct.hermes* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %19

42:                                               ; preds = %27
  %43 = load %struct.hermes*, %struct.hermes** %3, align 8
  %44 = load i32, i32* @EVSTAT, align 4
  %45 = call i32 @hermes_read_regn(%struct.hermes* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load %struct.hermes*, %struct.hermes** %3, align 8
  %47 = load i32, i32* @EVACK, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @hermes_write_regn(%struct.hermes* %46, i32 %47, i32 %48)
  %50 = load %struct.hermes*, %struct.hermes** %3, align 8
  %51 = load i32, i32* @HERMES_CMD_INIT, align 4
  %52 = call i32 @hermes_doicmd_wait(%struct.hermes* %50, i32 %51, i32 0, i32 0, i32 0, i32* null)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %42, %32
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @hermes_write_regn(%struct.hermes*, i32, i32) #1

declare dso_local i32 @hermes_read_regn(%struct.hermes*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hermes_doicmd_wait(%struct.hermes*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
