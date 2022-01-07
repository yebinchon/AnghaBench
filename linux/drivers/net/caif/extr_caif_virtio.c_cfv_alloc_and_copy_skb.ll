; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_virtio.c_cfv_alloc_and_copy_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_virtio.c_cfv_alloc_and_copy_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cfv_info = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Invalid frmlen:%u  mtu:%u hr:%d tr:%d\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@IP_HDR_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i32*, %struct.cfv_info*, i32*, i64)* @cfv_alloc_and_copy_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @cfv_alloc_and_copy_skb(i32* %0, %struct.cfv_info* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cfv_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.cfv_info* %1, %struct.cfv_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32*, i32** %6, align 8
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.cfv_info*, %struct.cfv_info** %7, align 8
  %16 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.cfv_info*, %struct.cfv_info** %7, align 8
  %22 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.cfv_info*, %struct.cfv_info** %7, align 8
  %25 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = icmp sle i64 %20, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %19, %4
  %30 = load %struct.cfv_info*, %struct.cfv_info** %7, align 8
  %31 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.cfv_info*, %struct.cfv_info** %7, align 8
  %35 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.cfv_info*, %struct.cfv_info** %7, align 8
  %38 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.cfv_info*, %struct.cfv_info** %7, align 8
  %41 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @netdev_err(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %36, i64 %39, i64 %42)
  %44 = load i32, i32* @EPROTO, align 4
  %45 = sub nsw i32 0, %44
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %98

47:                                               ; preds = %19
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.cfv_info*, %struct.cfv_info** %7, align 8
  %50 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.cfv_info*, %struct.cfv_info** %7, align 8
  %53 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = sub nsw i64 %48, %55
  store i64 %56, i64* %11, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.cfv_info*, %struct.cfv_info** %7, align 8
  %59 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = ptrtoint i32* %61 to i64
  %63 = load i32, i32* @IP_HDR_ALIGN, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = and i64 %62, %65
  store i64 %66, i64* %12, align 8
  %67 = load %struct.cfv_info*, %struct.cfv_info** %7, align 8
  %68 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %12, align 8
  %72 = add nsw i64 %70, %71
  %73 = call %struct.sk_buff* @netdev_alloc_skb(i32 %69, i64 %72)
  store %struct.sk_buff* %73, %struct.sk_buff** %10, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = icmp ne %struct.sk_buff* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %47
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %98

80:                                               ; preds = %47
  %81 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %82 = load %struct.cfv_info*, %struct.cfv_info** %7, align 8
  %83 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %12, align 8
  %86 = add nsw i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @skb_reserve(%struct.sk_buff* %81, i32 %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load %struct.cfv_info*, %struct.cfv_info** %7, align 8
  %92 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i64, i64* %11, align 8
  %96 = call i32 @skb_put_data(%struct.sk_buff* %89, i32* %94, i64 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %97, %struct.sk_buff** %5, align 8
  br label %98

98:                                               ; preds = %80, %76, %29
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %99
}

declare dso_local i32 @netdev_err(i32, i8*, i64, i64, i64, i64) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
