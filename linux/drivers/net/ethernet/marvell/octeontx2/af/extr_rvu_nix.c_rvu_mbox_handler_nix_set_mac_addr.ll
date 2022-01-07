; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { i32* }
%struct.nix_set_mac_addr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.msg_rsp = type { i32 }
%struct.rvu_pfvf = type { i32, i32, i32 }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_nix_set_mac_addr(%struct.rvu* %0, %struct.nix_set_mac_addr* %1, %struct.msg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.nix_set_mac_addr*, align 8
  %7 = alloca %struct.msg_rsp*, align 8
  %8 = alloca %struct.rvu_hwinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rvu_pfvf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.nix_set_mac_addr* %1, %struct.nix_set_mac_addr** %6, align 8
  store %struct.msg_rsp* %2, %struct.msg_rsp** %7, align 8
  %13 = load %struct.rvu*, %struct.rvu** %5, align 8
  %14 = getelementptr inbounds %struct.rvu, %struct.rvu* %13, i32 0, i32 0
  %15 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %14, align 8
  store %struct.rvu_hwinfo* %15, %struct.rvu_hwinfo** %8, align 8
  %16 = load %struct.nix_set_mac_addr*, %struct.nix_set_mac_addr** %6, align 8
  %17 = getelementptr inbounds %struct.nix_set_mac_addr, %struct.nix_set_mac_addr* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.rvu*, %struct.rvu** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %20, i32 %21)
  store %struct.rvu_pfvf* %22, %struct.rvu_pfvf** %10, align 8
  %23 = load %struct.rvu*, %struct.rvu** %5, align 8
  %24 = load i32, i32* @BLKTYPE_NIX, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @rvu_get_blkaddr(%struct.rvu* %23, i32 %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %28 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %3
  %35 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %35, i32* %4, align 4
  br label %72

36:                                               ; preds = %31
  %37 = load %struct.rvu*, %struct.rvu** %5, align 8
  %38 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  %39 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @rvu_get_lf(%struct.rvu* %37, i32* %43, i32 %44, i32 0)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %49, i32* %4, align 4
  br label %72

50:                                               ; preds = %36
  %51 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %52 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nix_set_mac_addr*, %struct.nix_set_mac_addr** %6, align 8
  %55 = getelementptr inbounds %struct.nix_set_mac_addr, %struct.nix_set_mac_addr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ether_addr_copy(i32 %53, i32 %56)
  %58 = load %struct.rvu*, %struct.rvu** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %62 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nix_set_mac_addr*, %struct.nix_set_mac_addr** %6, align 8
  %65 = getelementptr inbounds %struct.nix_set_mac_addr, %struct.nix_set_mac_addr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @rvu_npc_install_ucast_entry(%struct.rvu* %58, i32 %59, i32 %60, i32 %63, i32 %66)
  %68 = load %struct.rvu*, %struct.rvu** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @rvu_npc_update_rxvlan(%struct.rvu* %68, i32 %69, i32 %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %50, %48, %34
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_get_lf(%struct.rvu*, i32*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @rvu_npc_install_ucast_entry(%struct.rvu*, i32, i32, i32, i32) #1

declare dso_local i32 @rvu_npc_update_rxvlan(%struct.rvu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
