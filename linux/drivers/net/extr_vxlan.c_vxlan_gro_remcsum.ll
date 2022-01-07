; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_gro_remcsum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_gro_remcsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.vxlanhdr = type { i32 }
%struct.gro_remcsum = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vxlanhdr* (%struct.sk_buff*, i32, %struct.vxlanhdr*, i64, i32, %struct.gro_remcsum*, i32)* @vxlan_gro_remcsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vxlanhdr* @vxlan_gro_remcsum(%struct.sk_buff* %0, i32 %1, %struct.vxlanhdr* %2, i64 %3, i32 %4, %struct.gro_remcsum* %5, i32 %6) #0 {
  %8 = alloca %struct.vxlanhdr*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vxlanhdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gro_remcsum*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.vxlanhdr* %2, %struct.vxlanhdr** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.gro_remcsum* %5, %struct.gro_remcsum** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load %struct.vxlanhdr*, %struct.vxlanhdr** %11, align 8
  store %struct.vxlanhdr* %23, %struct.vxlanhdr** %8, align 8
  br label %51

24:                                               ; preds = %7
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store %struct.vxlanhdr* null, %struct.vxlanhdr** %8, align 8
  br label %51

31:                                               ; preds = %24
  %32 = load i32, i32* %13, align 4
  %33 = call i64 @vxlan_rco_start(i32 %32)
  store i64 %33, i64* %16, align 8
  %34 = load i64, i64* %16, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i64 @vxlan_rco_offset(i32 %35)
  %37 = add i64 %34, %36
  store i64 %37, i64* %17, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = load %struct.vxlanhdr*, %struct.vxlanhdr** %11, align 8
  %40 = bitcast %struct.vxlanhdr* %39 to i8*
  %41 = load i32, i32* %10, align 4
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* %17, align 8
  %45 = load %struct.gro_remcsum*, %struct.gro_remcsum** %14, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call %struct.vxlanhdr* @skb_gro_remcsum_process(%struct.sk_buff* %38, i8* %40, i32 %41, i64 %42, i64 %43, i64 %44, %struct.gro_remcsum* %45, i32 %46)
  store %struct.vxlanhdr* %47, %struct.vxlanhdr** %11, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load %struct.vxlanhdr*, %struct.vxlanhdr** %11, align 8
  store %struct.vxlanhdr* %50, %struct.vxlanhdr** %8, align 8
  br label %51

51:                                               ; preds = %31, %30, %22
  %52 = load %struct.vxlanhdr*, %struct.vxlanhdr** %8, align 8
  ret %struct.vxlanhdr* %52
}

declare dso_local %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local i64 @vxlan_rco_start(i32) #1

declare dso_local i64 @vxlan_rco_offset(i32) #1

declare dso_local %struct.vxlanhdr* @skb_gro_remcsum_process(%struct.sk_buff*, i8*, i32, i64, i64, i64, %struct.gro_remcsum*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
