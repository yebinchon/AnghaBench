; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes.c_hermesi_program_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes.c_hermesi_program_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hermes*, i32, i32, %struct.hermes_response*)*, i32 (%struct.hermes*, i32, i32, i32, i32, i32*)* }
%struct.hermes_response = type { i32, i32, i32, i32 }

@HERMES_PROGRAM_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"PROGRAM_DISABLE returned %d, r0 0x%04x, r1 0x%04x, r2 0x%04x\0A\00", align 1
@HERMES_STATUS_CMDCODE = common dso_local global i32 0, align 4
@HERMES_CMD_DOWNLD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"AUX disable returned %d\0A\00", align 1
@EVACK = common dso_local global i32 0, align 4
@HERMES_CMD_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*)* @hermesi_program_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hermesi_program_end(%struct.hermes* %0) #0 {
  %2 = alloca %struct.hermes*, align 8
  %3 = alloca %struct.hermes_response, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hermes* %0, %struct.hermes** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.hermes*, %struct.hermes** %2, align 8
  %7 = getelementptr inbounds %struct.hermes, %struct.hermes* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.hermes*, i32, i32, %struct.hermes_response*)*, i32 (%struct.hermes*, i32, i32, %struct.hermes_response*)** %9, align 8
  %11 = load %struct.hermes*, %struct.hermes** %2, align 8
  %12 = load i32, i32* @HERMES_PROGRAM_DISABLE, align 4
  %13 = call i32 %10(%struct.hermes* %11, i32 %12, i32 0, %struct.hermes_response* %3)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds %struct.hermes_response, %struct.hermes_response* %3, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.hermes_response, %struct.hermes_response* %3, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.hermes_response, %struct.hermes_response* %3, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16, i32 %18, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.hermes_response, %struct.hermes_response* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HERMES_STATUS_CMDCODE, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @HERMES_CMD_DOWNLD, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %24, %1
  %35 = load %struct.hermes*, %struct.hermes** %2, align 8
  %36 = call i32 @hermes_aux_control(%struct.hermes* %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.hermes*, %struct.hermes** %2, align 8
  %40 = load i32, i32* @EVACK, align 4
  %41 = call i32 @hermes_write_regn(%struct.hermes* %39, i32 %40, i32 65535)
  %42 = load %struct.hermes*, %struct.hermes** %2, align 8
  %43 = getelementptr inbounds %struct.hermes, %struct.hermes* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (%struct.hermes*, i32, i32, i32, i32, i32*)*, i32 (%struct.hermes*, i32, i32, i32, i32, i32*)** %45, align 8
  %47 = load %struct.hermes*, %struct.hermes** %2, align 8
  %48 = load i32, i32* @HERMES_CMD_INIT, align 4
  %49 = or i32 0, %48
  %50 = call i32 %46(%struct.hermes* %47, i32 %49, i32 0, i32 0, i32 0, i32* null)
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %34
  %54 = load i32, i32* %4, align 4
  br label %57

55:                                               ; preds = %34
  %56 = load i32, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  ret i32 %58
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @hermes_aux_control(%struct.hermes*, i32) #1

declare dso_local i32 @hermes_write_regn(%struct.hermes*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
