; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_map_data.c_rmnet_map_deaggregate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_map_data.c_rmnet_map_deaggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.rmnet_port = type { i32 }
%struct.rmnet_map_header = type { i32 }

@RMNET_FLAGS_INGRESS_MAP_CKSUMV4 = common dso_local global i32 0, align 4
@RMNET_MAP_DEAGGR_SPACING = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RMNET_MAP_DEAGGR_HEADROOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @rmnet_map_deaggregate(%struct.sk_buff* %0, %struct.rmnet_port* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rmnet_port*, align 8
  %6 = alloca %struct.rmnet_map_header*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.rmnet_port* %1, %struct.rmnet_port** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %78

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.rmnet_map_header*
  store %struct.rmnet_map_header* %18, %struct.rmnet_map_header** %6, align 8
  %19 = load %struct.rmnet_map_header*, %struct.rmnet_map_header** %6, align 8
  %20 = getelementptr inbounds %struct.rmnet_map_header, %struct.rmnet_map_header* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ntohs(i32 %21)
  %23 = add i64 %22, 4
  store i64 %23, i64* %8, align 8
  %24 = load %struct.rmnet_port*, %struct.rmnet_port** %5, align 8
  %25 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RMNET_FLAGS_INGRESS_MAP_CKSUMV4, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %14
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 4
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %30, %14
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64, i64* %8, align 8
  %39 = trunc i64 %38 to i32
  %40 = sub nsw i32 %37, %39
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %78

43:                                               ; preds = %33
  %44 = load %struct.rmnet_map_header*, %struct.rmnet_map_header** %6, align 8
  %45 = getelementptr inbounds %struct.rmnet_map_header, %struct.rmnet_map_header* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ntohs(i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %78

50:                                               ; preds = %43
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @RMNET_MAP_DEAGGR_SPACING, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call %struct.sk_buff* @alloc_skb(i64 %53, i32 %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %7, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %78

59:                                               ; preds = %50
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = load i32, i32* @RMNET_MAP_DEAGGR_HEADROOM, align 4
  %62 = call i32 @skb_reserve(%struct.sk_buff* %60, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @skb_put(%struct.sk_buff* %63, i64 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @memcpy(i64 %68, i64 %71, i64 %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @skb_pull(%struct.sk_buff* %74, i64 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %77, %struct.sk_buff** %3, align 8
  br label %78

78:                                               ; preds = %59, %58, %49, %42, %13
  %79 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %79
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
