; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_print_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_print_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32* }
%struct.ethhdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"\0A************** SKB dump ****************\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s packet of %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Dst MAC addr: %pM\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Src MAC addr: %pM\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Protocol: %#06hx\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"  %#06x: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xgbe_print_pkt(%struct.net_device* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to %struct.ethhdr*
  store %struct.ethhdr* %14, %struct.ethhdr** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %28 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %33 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %38 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ntohs(i32 %39)
  %41 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %68, %3
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %42
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sub i32 %51, %52
  %54 = call i32 @min(i32 %53, i32 32)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %10, align 4
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %63 = call i32 @hex_dump_to_buffer(i32* %60, i32 %61, i32 32, i32 1, i8* %62, i32 128, i32 0)
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %67 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %65, i8* %66)
  br label %68

68:                                               ; preds = %48
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, 32
  store i32 %70, i32* %9, align 4
  br label %42

71:                                               ; preds = %42
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @hex_dump_to_buffer(i32*, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
