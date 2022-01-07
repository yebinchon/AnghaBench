; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_write_swqe2_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_write_swqe2_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ehea_swqe = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ehea_vsgentry }
%struct.ehea_vsgentry = type { i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_device*, %struct.ehea_swqe*, i8*)* @write_swqe2_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_swqe2_data(%struct.sk_buff* %0, %struct.net_device* %1, %struct.ehea_swqe* %2, i8* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ehea_swqe*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ehea_vsgentry*, align 8
  %10 = alloca %struct.ehea_vsgentry*, align 8
  %11 = alloca %struct.ehea_vsgentry*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.ehea_swqe* %2, %struct.ehea_swqe** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %13, align 4
  %20 = load %struct.ehea_swqe*, %struct.ehea_swqe** %7, align 8
  %21 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store %struct.ehea_vsgentry* %23, %struct.ehea_vsgentry** %10, align 8
  %24 = load %struct.ehea_swqe*, %struct.ehea_swqe** %7, align 8
  %25 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to %struct.ehea_vsgentry*
  store %struct.ehea_vsgentry* %28, %struct.ehea_vsgentry** %9, align 8
  store i32 0, i32* %14, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load %struct.ehea_swqe*, %struct.ehea_swqe** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @write_swqe2_immediate(%struct.sk_buff* %29, %struct.ehea_swqe* %30, i8* %31)
  %33 = load i32, i32* %13, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %102

35:                                               ; preds = %4
  %36 = load %struct.ehea_swqe*, %struct.ehea_swqe** %7, align 8
  %37 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32* %45, i32** %12, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %10, align 8
  %48 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i8* @skb_frag_size(i32* %49)
  %51 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %10, align 8
  %52 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @skb_frag_address(i32* %53)
  %55 = call i8* @ehea_map_vaddr(i32 %54)
  %56 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %10, align 8
  %57 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.ehea_swqe*, %struct.ehea_swqe** %7, align 8
  %59 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  store i32 1, i32* %14, align 4
  br label %62

62:                                               ; preds = %40, %35
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %98, %62
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %64
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32* %75, i32** %12, align 8
  %76 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %9, align 8
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %14, align 4
  %79 = sub nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %76, i64 %80
  store %struct.ehea_vsgentry* %81, %struct.ehea_vsgentry** %11, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %11, align 8
  %84 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = call i8* @skb_frag_size(i32* %85)
  %87 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %11, align 8
  %88 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @skb_frag_address(i32* %89)
  %91 = call i8* @ehea_map_vaddr(i32 %90)
  %92 = load %struct.ehea_vsgentry*, %struct.ehea_vsgentry** %11, align 8
  %93 = getelementptr inbounds %struct.ehea_vsgentry, %struct.ehea_vsgentry* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load %struct.ehea_swqe*, %struct.ehea_swqe** %7, align 8
  %95 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %68
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  br label %64

101:                                              ; preds = %64
  br label %102

102:                                              ; preds = %101, %4
  ret void
}

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @write_swqe2_immediate(%struct.sk_buff*, %struct.ehea_swqe*, i8*) #1

declare dso_local i8* @skb_frag_size(i32*) #1

declare dso_local i8* @ehea_map_vaddr(i32) #1

declare dso_local i32 @skb_frag_address(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
