; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_get_ep_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_get_ep_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_drif_sdr = type { i32, i32 }
%struct.fwnode_handle = type { i32 }

@RCAR_DRIF_SIRMDR1_SYNCMD_LR = common dso_local global i32 0, align 4
@RCAR_DRIF_SIRMDR1_MSB_FIRST = common dso_local global i32 0, align 4
@RCAR_DRIF_SIRMDR1_DTDL_1 = common dso_local global i32 0, align 4
@RCAR_DRIF_SIRMDR1_SYNCDL_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sync-active\00", align 1
@RCAR_DRIF_SIRMDR1_SYNCAC_POL_HIGH = common dso_local global i32 0, align 4
@RCAR_DRIF_SIRMDR1_SYNCAC_POL_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"mdr1 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_drif_sdr*, %struct.fwnode_handle*)* @rcar_drif_get_ep_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_drif_get_ep_properties(%struct.rcar_drif_sdr* %0, %struct.fwnode_handle* %1) #0 {
  %3 = alloca %struct.rcar_drif_sdr*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca i64, align 8
  store %struct.rcar_drif_sdr* %0, %struct.rcar_drif_sdr** %3, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %4, align 8
  %6 = load i32, i32* @RCAR_DRIF_SIRMDR1_SYNCMD_LR, align 4
  %7 = load i32, i32* @RCAR_DRIF_SIRMDR1_MSB_FIRST, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @RCAR_DRIF_SIRMDR1_DTDL_1, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @RCAR_DRIF_SIRMDR1_SYNCDL_0, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %14 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %16 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64* %5)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @RCAR_DRIF_SIRMDR1_SYNCAC_POL_HIGH, align 4
  br label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @RCAR_DRIF_SIRMDR1_SYNCAC_POL_LOW, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %28 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @RCAR_DRIF_SIRMDR1_SYNCAC_POL_HIGH, align 4
  %33 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %34 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %39 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %42 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  ret void
}

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i64*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
