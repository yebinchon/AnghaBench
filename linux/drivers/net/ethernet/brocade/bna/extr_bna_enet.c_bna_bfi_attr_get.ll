; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_bfi_attr_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_bfi_attr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ioceth = type { i32, %struct.TYPE_4__*, %struct.bfi_enet_attr_req }
%struct.TYPE_4__ = type { i32 }
%struct.bfi_enet_attr_req = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@BFI_MC_ENET = common dso_local global i32 0, align 4
@BFI_ENET_H2I_GET_ATTR_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_ioceth*)* @bna_bfi_attr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_attr_get(%struct.bna_ioceth* %0) #0 {
  %2 = alloca %struct.bna_ioceth*, align 8
  %3 = alloca %struct.bfi_enet_attr_req*, align 8
  store %struct.bna_ioceth* %0, %struct.bna_ioceth** %2, align 8
  %4 = load %struct.bna_ioceth*, %struct.bna_ioceth** %2, align 8
  %5 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %4, i32 0, i32 2
  store %struct.bfi_enet_attr_req* %5, %struct.bfi_enet_attr_req** %3, align 8
  %6 = load %struct.bfi_enet_attr_req*, %struct.bfi_enet_attr_req** %3, align 8
  %7 = getelementptr inbounds %struct.bfi_enet_attr_req, %struct.bfi_enet_attr_req* %6, i32 0, i32 0
  %8 = load i32, i32* @BFI_MC_ENET, align 4
  %9 = load i32, i32* @BFI_ENET_H2I_GET_ATTR_REQ, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @bfi_msgq_mhdr_set(i32 %11, i32 %8, i32 %9, i32 0, i32 0)
  %13 = call i32 @bfi_msgq_num_cmd_entries(i32 4)
  %14 = call i32 @htons(i32 %13)
  %15 = load %struct.bfi_enet_attr_req*, %struct.bfi_enet_attr_req** %3, align 8
  %16 = getelementptr inbounds %struct.bfi_enet_attr_req, %struct.bfi_enet_attr_req* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load %struct.bna_ioceth*, %struct.bna_ioceth** %2, align 8
  %19 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %18, i32 0, i32 0
  %20 = load %struct.bfi_enet_attr_req*, %struct.bfi_enet_attr_req** %3, align 8
  %21 = getelementptr inbounds %struct.bfi_enet_attr_req, %struct.bfi_enet_attr_req* %20, i32 0, i32 0
  %22 = call i32 @bfa_msgq_cmd_set(i32* %19, i32* null, i32* null, i32 4, %struct.TYPE_5__* %21)
  %23 = load %struct.bna_ioceth*, %struct.bna_ioceth** %2, align 8
  %24 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.bna_ioceth*, %struct.bna_ioceth** %2, align 8
  %28 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %27, i32 0, i32 0
  %29 = call i32 @bfa_msgq_cmd_post(i32* %26, i32* %28)
  ret void
}

declare dso_local i32 @bfi_msgq_mhdr_set(i32, i32, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @bfi_msgq_num_cmd_entries(i32) #1

declare dso_local i32 @bfa_msgq_cmd_set(i32*, i32*, i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @bfa_msgq_cmd_post(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
