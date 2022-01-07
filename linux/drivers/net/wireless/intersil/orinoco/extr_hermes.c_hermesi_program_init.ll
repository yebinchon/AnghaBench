; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes.c_hermesi_program_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes.c_hermesi_program_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hermes*, i32, i32, i32, i32, i32*)* }

@EVACK = common dso_local global i32 0, align 4
@HERMES_CMD_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"AUX enable returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Enabling volatile, EP 0x%08x\0A\00", align 1
@HERMES_PROGRAM_ENABLE_VOLATILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"PROGRAM_ENABLE returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*, i32)* @hermesi_program_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hermesi_program_init(%struct.hermes* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hermes*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hermes* %0, %struct.hermes** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hermes*, %struct.hermes** %4, align 8
  %8 = load i32, i32* @EVACK, align 4
  %9 = call i32 @hermes_write_regn(%struct.hermes* %7, i32 %8, i32 65535)
  %10 = load %struct.hermes*, %struct.hermes** %4, align 8
  %11 = getelementptr inbounds %struct.hermes, %struct.hermes* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.hermes*, i32, i32, i32, i32, i32*)*, i32 (%struct.hermes*, i32, i32, i32, i32, i32*)** %13, align 8
  %15 = load %struct.hermes*, %struct.hermes** %4, align 8
  %16 = load i32, i32* @HERMES_CMD_INIT, align 4
  %17 = or i32 256, %16
  %18 = call i32 %14(%struct.hermes* %15, i32 %17, i32 0, i32 0, i32 0, i32* null)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %64

23:                                               ; preds = %2
  %24 = load %struct.hermes*, %struct.hermes** %4, align 8
  %25 = getelementptr inbounds %struct.hermes, %struct.hermes* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.hermes*, i32, i32, i32, i32, i32*)*, i32 (%struct.hermes*, i32, i32, i32, i32, i32*)** %27, align 8
  %29 = load %struct.hermes*, %struct.hermes** %4, align 8
  %30 = load i32, i32* @HERMES_CMD_INIT, align 4
  %31 = or i32 0, %30
  %32 = call i32 %28(%struct.hermes* %29, i32 %31, i32 0, i32 0, i32 0, i32* null)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %64

37:                                               ; preds = %23
  %38 = load %struct.hermes*, %struct.hermes** %4, align 8
  %39 = call i32 @hermes_aux_control(%struct.hermes* %38, i32 1)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %64

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.hermes*, %struct.hermes** %4, align 8
  %50 = getelementptr inbounds %struct.hermes, %struct.hermes* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.hermes*, i32, i32, i32, i32, i32*)*, i32 (%struct.hermes*, i32, i32, i32, i32, i32*)** %52, align 8
  %54 = load %struct.hermes*, %struct.hermes** %4, align 8
  %55 = load i32, i32* @HERMES_PROGRAM_ENABLE_VOLATILE, align 4
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 65535
  %58 = load i32, i32* %5, align 4
  %59 = ashr i32 %58, 16
  %60 = call i32 %53(%struct.hermes* %54, i32 %55, i32 %57, i32 %59, i32 0, i32* null)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %46, %44, %35, %21
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @hermes_write_regn(%struct.hermes*, i32, i32) #1

declare dso_local i32 @hermes_aux_control(%struct.hermes*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
