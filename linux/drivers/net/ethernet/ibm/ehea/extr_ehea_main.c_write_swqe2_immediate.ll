; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_write_swqe2_immediate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_write_swqe2_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ehea_swqe = type { i32, i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ehea_vsgentry, i32* }
%struct.ehea_vsgentry = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@SWQE2_MAX_IMM = common dso_local global i32 0, align 4
@EHEA_SWQE_TSO = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.ehea_swqe*, i32)* @write_swqe2_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_swqe2_immediate(%struct.sk_buff* %0, %struct.ehea_swqe* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ehea_swqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ehea_vsgentry*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ehea_swqe* %1, %struct.ehea_swqe** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @skb_headlen(%struct.sk_buff* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %14 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32* %18, i32** %8, align 8
  %19 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %20 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.ehea_vsgentry* %22, %struct.ehea_vsgentry** %9, align 8
  %23 = load i32, i32* @SWQE2_MAX_IMM, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %25 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i64 @skb_is_gso(%struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %3
  %30 = load i32, i32* @EHEA_SWQE_TSO, align 4
  %31 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %32 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %40 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @ETH_HLEN, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @ip_hdrlen(%struct.sk_buff* %42)
  %44 = add i32 %41, %43
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i32 @tcp_hdrlen(%struct.sk_buff* %45)
  %47 = add i32 %44, %46
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %29, %3
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call i64 @skb_is_gso(%struct.sk_buff* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @SWQE2_MAX_IMM, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %52, %48
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %57, i32* %58, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %63 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %56
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %9, align 8
  %70 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sub i32 %71, %72
  %74 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %9, align 8
  %75 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = call i32 @ehea_map_vaddr(i64 %81)
  %83 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %9, align 8
  %84 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %86 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %67, %56
  br label %98

90:                                               ; preds = %52
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %91, i32* %92, i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.ehea_swqe*, %struct.ehea_swqe** %5, align 8
  %97 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %90, %89
  ret void
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @ehea_map_vaddr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
