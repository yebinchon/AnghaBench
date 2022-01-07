; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_mhz_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_mhz_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i8**, %struct.net_device* }
%struct.net_device = type { i32 }

@CISTPL_VERS_1 = common dso_local global i32 0, align 4
@pcmcia_get_versmac = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @mhz_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mhz_setup(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %12 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %11, i32 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 3
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 3
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @cvt_ascii_address(%struct.net_device* %18, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %56

27:                                               ; preds = %17, %1
  %28 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %29 = load i32, i32* @CISTPL_VERS_1, align 4
  %30 = load i32, i32* @pcmcia_get_versmac, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @pcmcia_loop_tuple(%struct.pcmcia_device* %28, i32 %29, i32 %30, %struct.net_device* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %56

35:                                               ; preds = %27
  store i32 -1, i32* %7, align 4
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %37 = call i64 @pcmcia_get_tuple(%struct.pcmcia_device* %36, i32 129, i8** %6)
  store i64 %37, i64* %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  %42 = icmp uge i64 %41, 13
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 12
  store i8 0, i8* %45, align 1
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @cvt_ascii_address(%struct.net_device* %46, i8* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %43
  br label %52

52:                                               ; preds = %51, %40, %35
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @kfree(i8* %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %34, %26
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @cvt_ascii_address(%struct.net_device*, i8*) #1

declare dso_local i32 @pcmcia_loop_tuple(%struct.pcmcia_device*, i32, i32, %struct.net_device*) #1

declare dso_local i64 @pcmcia_get_tuple(%struct.pcmcia_device*, i32, i8**) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
