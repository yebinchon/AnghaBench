; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_repr_get_type_and_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_repr_get_type_and_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }

@NFP_FLOWER_CMSG_PORT_TYPE = common dso_local global i32 0, align 4
@NFP_FLOWER_CMSG_PORT_PHYS_PORT_NUM = common dso_local global i32 0, align 4
@NFP_REPR_TYPE_PHYS_PORT = common dso_local global i32 0, align 4
@NFP_FLOWER_CMSG_PORT_VNIC = common dso_local global i32 0, align 4
@NFP_FLOWER_CMSG_PORT_VNIC_TYPE = common dso_local global i32 0, align 4
@NFP_FLOWER_CMSG_PORT_VNIC_TYPE_PF = common dso_local global i32 0, align 4
@NFP_REPR_TYPE_PF = common dso_local global i32 0, align 4
@NFP_REPR_TYPE_VF = common dso_local global i32 0, align 4
@__NFP_REPR_TYPE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, i32, i32*)* @nfp_flower_repr_get_type_and_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_repr_get_type_and_port(%struct.nfp_app* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* @NFP_FLOWER_CMSG_PORT_TYPE, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @FIELD_GET(i32 %8, i32 %9)
  switch i32 %10, label %31 [
    i32 128, label %11
    i32 129, label %17
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @NFP_FLOWER_CMSG_PORT_PHYS_PORT_NUM, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @FIELD_GET(i32 %12, i32 %13)
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @NFP_REPR_TYPE_PHYS_PORT, align 4
  store i32 %16, i32* %4, align 4
  br label %33

17:                                               ; preds = %3
  %18 = load i32, i32* @NFP_FLOWER_CMSG_PORT_VNIC, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @FIELD_GET(i32 %18, i32 %19)
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @NFP_FLOWER_CMSG_PORT_VNIC_TYPE, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @FIELD_GET(i32 %22, i32 %23)
  %25 = load i32, i32* @NFP_FLOWER_CMSG_PORT_VNIC_TYPE_PF, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @NFP_REPR_TYPE_PF, align 4
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %17
  %30 = load i32, i32* @NFP_REPR_TYPE_VF, align 4
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @__NFP_REPR_TYPE_MAX, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %29, %27, %11
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
