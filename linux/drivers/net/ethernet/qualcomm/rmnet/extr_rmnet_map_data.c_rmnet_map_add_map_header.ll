; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_map_data.c_rmnet_map_add_map_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_map_data.c_rmnet_map_add_map_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmnet_map_header = type { i32, i8* }
%struct.sk_buff = type { i32 }

@RMNET_MAP_NO_PAD_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rmnet_map_header* @rmnet_map_add_map_header(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rmnet_map_header*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rmnet_map_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rmnet_map_header*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i64 @skb_push(%struct.sk_buff* %17, i32 16)
  %19 = inttoptr i64 %18 to %struct.rmnet_map_header*
  store %struct.rmnet_map_header* %19, %struct.rmnet_map_header** %8, align 8
  %20 = load %struct.rmnet_map_header*, %struct.rmnet_map_header** %8, align 8
  %21 = call i32 @memset(%struct.rmnet_map_header* %20, i32 0, i32 16)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @RMNET_MAP_NO_PAD_BYTES, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = call i8* @htons(i32 %26)
  %28 = load %struct.rmnet_map_header*, %struct.rmnet_map_header** %8, align 8
  %29 = getelementptr inbounds %struct.rmnet_map_header, %struct.rmnet_map_header* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.rmnet_map_header*, %struct.rmnet_map_header** %8, align 8
  store %struct.rmnet_map_header* %30, %struct.rmnet_map_header** %4, align 8
  br label %65

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @ALIGN(i32 %32, i32 4)
  %34 = load i32, i32* %10, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %53

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @skb_tailroom(%struct.sk_buff* %40)
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store %struct.rmnet_map_header* null, %struct.rmnet_map_header** %4, align 8
  br label %65

45:                                               ; preds = %39
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @skb_put(%struct.sk_buff* %46, i32 %47)
  %49 = inttoptr i64 %48 to %struct.rmnet_map_header*
  store %struct.rmnet_map_header* %49, %struct.rmnet_map_header** %11, align 8
  %50 = load %struct.rmnet_map_header*, %struct.rmnet_map_header** %11, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @memset(%struct.rmnet_map_header* %50, i32 0, i32 %51)
  br label %53

53:                                               ; preds = %45, %38
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %54, %55
  %57 = call i8* @htons(i32 %56)
  %58 = load %struct.rmnet_map_header*, %struct.rmnet_map_header** %8, align 8
  %59 = getelementptr inbounds %struct.rmnet_map_header, %struct.rmnet_map_header* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 63
  %62 = load %struct.rmnet_map_header*, %struct.rmnet_map_header** %8, align 8
  %63 = getelementptr inbounds %struct.rmnet_map_header, %struct.rmnet_map_header* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.rmnet_map_header*, %struct.rmnet_map_header** %8, align 8
  store %struct.rmnet_map_header* %64, %struct.rmnet_map_header** %4, align 8
  br label %65

65:                                               ; preds = %53, %44, %25
  %66 = load %struct.rmnet_map_header*, %struct.rmnet_map_header** %4, align 8
  ret %struct.rmnet_map_header* %66
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.rmnet_map_header*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
