; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_set_ipc_dli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_set_ipc_dli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_ctx = type { %struct.fdp1_dev* }
%struct.fdp1_dev = type { i32 }

@FD1_IPC_SMSK_THRESH_CONST = common dso_local global i32 0, align 4
@FD1_IPC_SMSK_THRESH = common dso_local global i32 0, align 4
@FD1_IPC_COMB_DET_CONST = common dso_local global i32 0, align 4
@FD1_IPC_COMB_DET = common dso_local global i32 0, align 4
@FD1_IPC_MOTDEC_CONST = common dso_local global i32 0, align 4
@FD1_IPC_MOTDEC = common dso_local global i32 0, align 4
@FD1_IPC_DLI_BLEND_CONST = common dso_local global i32 0, align 4
@FD1_IPC_DLI_BLEND = common dso_local global i32 0, align 4
@FD1_IPC_DLI_HGAIN_CONST = common dso_local global i32 0, align 4
@FD1_IPC_DLI_HGAIN = common dso_local global i32 0, align 4
@FD1_IPC_DLI_SPRS_CONST = common dso_local global i32 0, align 4
@FD1_IPC_DLI_SPRS = common dso_local global i32 0, align 4
@FD1_IPC_DLI_ANGLE_CONST = common dso_local global i32 0, align 4
@FD1_IPC_DLI_ANGLE = common dso_local global i32 0, align 4
@FD1_IPC_DLI_ISOPIX0_CONST = common dso_local global i32 0, align 4
@FD1_IPC_DLI_ISOPIX0 = common dso_local global i32 0, align 4
@FD1_IPC_DLI_ISOPIX1_CONST = common dso_local global i32 0, align 4
@FD1_IPC_DLI_ISOPIX1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdp1_ctx*)* @fdp1_set_ipc_dli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdp1_set_ipc_dli(%struct.fdp1_ctx* %0) #0 {
  %2 = alloca %struct.fdp1_ctx*, align 8
  %3 = alloca %struct.fdp1_dev*, align 8
  store %struct.fdp1_ctx* %0, %struct.fdp1_ctx** %2, align 8
  %4 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %4, i32 0, i32 0
  %6 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  store %struct.fdp1_dev* %6, %struct.fdp1_dev** %3, align 8
  %7 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %8 = load i32, i32* @FD1_IPC_SMSK_THRESH_CONST, align 4
  %9 = load i32, i32* @FD1_IPC_SMSK_THRESH, align 4
  %10 = call i32 @fdp1_write(%struct.fdp1_dev* %7, i32 %8, i32 %9)
  %11 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %12 = load i32, i32* @FD1_IPC_COMB_DET_CONST, align 4
  %13 = load i32, i32* @FD1_IPC_COMB_DET, align 4
  %14 = call i32 @fdp1_write(%struct.fdp1_dev* %11, i32 %12, i32 %13)
  %15 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %16 = load i32, i32* @FD1_IPC_MOTDEC_CONST, align 4
  %17 = load i32, i32* @FD1_IPC_MOTDEC, align 4
  %18 = call i32 @fdp1_write(%struct.fdp1_dev* %15, i32 %16, i32 %17)
  %19 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %20 = load i32, i32* @FD1_IPC_DLI_BLEND_CONST, align 4
  %21 = load i32, i32* @FD1_IPC_DLI_BLEND, align 4
  %22 = call i32 @fdp1_write(%struct.fdp1_dev* %19, i32 %20, i32 %21)
  %23 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %24 = load i32, i32* @FD1_IPC_DLI_HGAIN_CONST, align 4
  %25 = load i32, i32* @FD1_IPC_DLI_HGAIN, align 4
  %26 = call i32 @fdp1_write(%struct.fdp1_dev* %23, i32 %24, i32 %25)
  %27 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %28 = load i32, i32* @FD1_IPC_DLI_SPRS_CONST, align 4
  %29 = load i32, i32* @FD1_IPC_DLI_SPRS, align 4
  %30 = call i32 @fdp1_write(%struct.fdp1_dev* %27, i32 %28, i32 %29)
  %31 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %32 = load i32, i32* @FD1_IPC_DLI_ANGLE_CONST, align 4
  %33 = load i32, i32* @FD1_IPC_DLI_ANGLE, align 4
  %34 = call i32 @fdp1_write(%struct.fdp1_dev* %31, i32 %32, i32 %33)
  %35 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %36 = load i32, i32* @FD1_IPC_DLI_ISOPIX0_CONST, align 4
  %37 = load i32, i32* @FD1_IPC_DLI_ISOPIX0, align 4
  %38 = call i32 @fdp1_write(%struct.fdp1_dev* %35, i32 %36, i32 %37)
  %39 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %40 = load i32, i32* @FD1_IPC_DLI_ISOPIX1_CONST, align 4
  %41 = load i32, i32* @FD1_IPC_DLI_ISOPIX1, align 4
  %42 = call i32 @fdp1_write(%struct.fdp1_dev* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @fdp1_write(%struct.fdp1_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
