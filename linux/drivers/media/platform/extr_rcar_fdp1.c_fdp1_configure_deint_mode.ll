; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_configure_deint_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_configure_deint_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_ctx = type { i32, i32, i32, %struct.fdp1_dev* }
%struct.fdp1_dev = type { i32 }
%struct.fdp1_job = type { i32 }

@FD1_CTL_OPMODE_VIMD_NOINTERRUPT = common dso_local global i32 0, align 4
@FD1_IPC_MODE_DLI = common dso_local global i32 0, align 4
@FD1_CTL_CHACT_WR = common dso_local global i32 0, align 4
@FD1_CTL_CHACT_RD1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Progressive Mode\0A\00", align 1
@FD1_CTL_OPMODE_PRG = common dso_local global i32 0, align 4
@FD1_IPC_MODE_DIM_FIXED2D = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Adapt2D3D Mode\0A\00", align 1
@FD1_IPC_MODE_DIM_ADAPT2D3D = common dso_local global i32 0, align 4
@FD1_CTL_CHACT_SMW = common dso_local global i32 0, align 4
@FD1_CTL_CHACT_RD0 = common dso_local global i32 0, align 4
@FD1_CTL_CHACT_RD2 = common dso_local global i32 0, align 4
@FD1_CTL_CHACT_SMR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Fixed 3D Mode\0A\00", align 1
@FD1_IPC_MODE_DIM_FIXED3D = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Fixed 2D Mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Previous Field Mode\0A\00", align 1
@FD1_IPC_MODE_DIM_PREVFIELD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Next Field Mode\0A\00", align 1
@FD1_IPC_MODE_DIM_NEXTFIELD = common dso_local global i32 0, align 4
@FD1_CTL_CHACT = common dso_local global i32 0, align 4
@FD1_CTL_OPMODE = common dso_local global i32 0, align 4
@FD1_IPC_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdp1_ctx*, %struct.fdp1_job*)* @fdp1_configure_deint_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdp1_configure_deint_mode(%struct.fdp1_ctx* %0, %struct.fdp1_job* %1) #0 {
  %3 = alloca %struct.fdp1_ctx*, align 8
  %4 = alloca %struct.fdp1_job*, align 8
  %5 = alloca %struct.fdp1_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fdp1_ctx* %0, %struct.fdp1_ctx** %3, align 8
  store %struct.fdp1_job* %1, %struct.fdp1_job** %4, align 8
  %9 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %9, i32 0, i32 3
  %11 = load %struct.fdp1_dev*, %struct.fdp1_dev** %10, align 8
  store %struct.fdp1_dev* %11, %struct.fdp1_dev** %5, align 8
  %12 = load i32, i32* @FD1_CTL_OPMODE_VIMD_NOINTERRUPT, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @FD1_IPC_MODE_DLI, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @FD1_CTL_CHACT_WR, align 4
  %15 = load i32, i32* @FD1_CTL_CHACT_RD1, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %20 [
    i32 128, label %21
    i32 133, label %30
    i32 131, label %74
    i32 132, label %96
    i32 129, label %102
    i32 130, label %111
  ]

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %2, %20
  %22 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %23 = call i32 @dprintk(%struct.fdp1_dev* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @FD1_CTL_OPMODE_PRG, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @FD1_IPC_MODE_DIM_FIXED2D, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %120

30:                                               ; preds = %2
  %31 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %32 = call i32 @dprintk(%struct.fdp1_dev* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37, %30
  %43 = load i32, i32* @FD1_IPC_MODE_DIM_FIXED2D, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %50

46:                                               ; preds = %37
  %47 = load i32, i32* @FD1_IPC_MODE_DIM_ADAPT2D3D, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i32, i32* @FD1_CTL_CHACT_SMW, align 4
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @FD1_CTL_CHACT_RD0, align 4
  %60 = load i32, i32* @FD1_CTL_CHACT_RD2, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %55, %50
  %65 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 2
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @FD1_CTL_CHACT_SMR, align 4
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %69, %64
  br label %120

74:                                               ; preds = %2
  %75 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %76 = call i32 @dprintk(%struct.fdp1_dev* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @FD1_IPC_MODE_DIM_FIXED3D, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %74
  %85 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @FD1_CTL_CHACT_RD0, align 4
  %91 = load i32, i32* @FD1_CTL_CHACT_RD2, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %89, %84, %74
  br label %120

96:                                               ; preds = %2
  %97 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %98 = call i32 @dprintk(%struct.fdp1_dev* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @FD1_IPC_MODE_DIM_FIXED2D, align 4
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  br label %120

102:                                              ; preds = %2
  %103 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %104 = call i32 @dprintk(%struct.fdp1_dev* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32, i32* @FD1_IPC_MODE_DIM_PREVFIELD, align 4
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* @FD1_CTL_CHACT_RD0, align 4
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %120

111:                                              ; preds = %2
  %112 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %113 = call i32 @dprintk(%struct.fdp1_dev* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %114 = load i32, i32* @FD1_IPC_MODE_DIM_NEXTFIELD, align 4
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* @FD1_CTL_CHACT_RD2, align 4
  %118 = load i32, i32* %8, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %111, %102, %96, %95, %73, %21
  %121 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @FD1_CTL_CHACT, align 4
  %124 = call i32 @fdp1_write(%struct.fdp1_dev* %121, i32 %122, i32 %123)
  %125 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @FD1_CTL_OPMODE, align 4
  %128 = call i32 @fdp1_write(%struct.fdp1_dev* %125, i32 %126, i32 %127)
  %129 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @FD1_IPC_MODE, align 4
  %132 = call i32 @fdp1_write(%struct.fdp1_dev* %129, i32 %130, i32 %131)
  ret void
}

declare dso_local i32 @dprintk(%struct.fdp1_dev*, i8*) #1

declare dso_local i32 @fdp1_write(%struct.fdp1_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
