; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { i32* }
%struct.nix_rx_mode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.msg_rsp = type { i32 }
%struct.rvu_pfvf = type { i32, i32 }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@NIX_RX_MODE_PROMISC = common dso_local global i32 0, align 4
@NIX_RX_MODE_ALLMULTI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_nix_set_rx_mode(%struct.rvu* %0, %struct.nix_rx_mode* %1, %struct.msg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.nix_rx_mode*, align 8
  %7 = alloca %struct.msg_rsp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rvu_hwinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rvu_pfvf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.nix_rx_mode* %1, %struct.nix_rx_mode** %6, align 8
  store %struct.msg_rsp* %2, %struct.msg_rsp** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.rvu*, %struct.rvu** %5, align 8
  %16 = getelementptr inbounds %struct.rvu, %struct.rvu* %15, i32 0, i32 0
  %17 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %16, align 8
  store %struct.rvu_hwinfo* %17, %struct.rvu_hwinfo** %10, align 8
  %18 = load %struct.nix_rx_mode*, %struct.nix_rx_mode** %6, align 8
  %19 = getelementptr inbounds %struct.nix_rx_mode, %struct.nix_rx_mode* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.rvu*, %struct.rvu** %5, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %22, i32 %23)
  store %struct.rvu_pfvf* %24, %struct.rvu_pfvf** %12, align 8
  %25 = load %struct.rvu*, %struct.rvu** %5, align 8
  %26 = load i32, i32* @BLKTYPE_NIX, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @rvu_get_blkaddr(%struct.rvu* %25, i32 %26, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %12, align 8
  %30 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %3
  %37 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %37, i32* %4, align 4
  br label %92

38:                                               ; preds = %33
  %39 = load %struct.rvu*, %struct.rvu** %5, align 8
  %40 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %10, align 8
  %41 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @rvu_get_lf(%struct.rvu* %39, i32* %45, i32 %46, i32 0)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %51, i32* %4, align 4
  br label %92

52:                                               ; preds = %38
  %53 = load %struct.nix_rx_mode*, %struct.nix_rx_mode** %6, align 8
  %54 = getelementptr inbounds %struct.nix_rx_mode, %struct.nix_rx_mode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NIX_RX_MODE_PROMISC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %70

60:                                               ; preds = %52
  %61 = load %struct.nix_rx_mode*, %struct.nix_rx_mode** %6, align 8
  %62 = getelementptr inbounds %struct.nix_rx_mode, %struct.nix_rx_mode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NIX_RX_MODE_ALLMULTI, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 1, i32* %8, align 4
  br label %69

68:                                               ; preds = %60
  store i32 1, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %67
  br label %70

70:                                               ; preds = %69, %59
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.rvu*, %struct.rvu** %5, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @rvu_npc_disable_promisc_entry(%struct.rvu* %74, i32 %75, i32 %76)
  br label %87

78:                                               ; preds = %70
  %79 = load %struct.rvu*, %struct.rvu** %5, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %12, align 8
  %83 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @rvu_npc_install_promisc_entry(%struct.rvu* %79, i32 %80, i32 %81, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %78, %73
  %88 = load %struct.rvu*, %struct.rvu** %5, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @rvu_npc_update_rxvlan(%struct.rvu* %88, i32 %89, i32 %90)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %87, %50, %36
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_get_lf(%struct.rvu*, i32*, i32, i32) #1

declare dso_local i32 @rvu_npc_disable_promisc_entry(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_npc_install_promisc_entry(%struct.rvu*, i32, i32, i32, i32) #1

declare dso_local i32 @rvu_npc_update_rxvlan(%struct.rvu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
