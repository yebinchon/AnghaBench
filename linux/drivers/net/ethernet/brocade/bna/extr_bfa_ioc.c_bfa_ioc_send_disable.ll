; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_send_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_send_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32 }
%struct.bfi_ioc_ctrl_req = type { i32, i8*, i8*, i32 }

@BFI_MC_IOC = common dso_local global i32 0, align 4
@BFI_IOC_H2I_DISABLE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*)* @bfa_ioc_send_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_send_disable(%struct.bfa_ioc* %0) #0 {
  %2 = alloca %struct.bfa_ioc*, align 8
  %3 = alloca %struct.bfi_ioc_ctrl_req, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %2, align 8
  %4 = getelementptr inbounds %struct.bfi_ioc_ctrl_req, %struct.bfi_ioc_ctrl_req* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @BFI_MC_IOC, align 4
  %7 = load i32, i32* @BFI_IOC_H2I_DISABLE_REQ, align 4
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %9 = call i32 @bfa_ioc_portid(%struct.bfa_ioc* %8)
  %10 = call i32 @bfi_h2i_set(i32 %5, i32 %6, i32 %7, i32 %9)
  %11 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %12 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @htons(i32 %13)
  %15 = getelementptr inbounds %struct.bfi_ioc_ctrl_req, %struct.bfi_ioc_ctrl_req* %3, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  %16 = call i8* @htons(i32 0)
  %17 = getelementptr inbounds %struct.bfi_ioc_ctrl_req, %struct.bfi_ioc_ctrl_req* %3, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = call i32 (...) @ktime_get_real_seconds()
  %19 = call i32 @ntohl(i32 %18)
  %20 = getelementptr inbounds %struct.bfi_ioc_ctrl_req, %struct.bfi_ioc_ctrl_req* %3, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %22 = call i32 @bfa_ioc_mbox_send(%struct.bfa_ioc* %21, %struct.bfi_ioc_ctrl_req* %3, i32 32)
  ret void
}

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(%struct.bfa_ioc*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @bfa_ioc_mbox_send(%struct.bfa_ioc*, %struct.bfi_ioc_ctrl_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
