; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_xmit_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_xmit_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.nfp_fl_payload = type { %struct.TYPE_2__, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.sk_buff = type { i32 }

@NFP_FL_LW_SIZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.nfp_fl_payload*, i32)* @nfp_flower_xmit_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_xmit_flow(%struct.nfp_app* %0, %struct.nfp_fl_payload* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.nfp_fl_payload*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i8*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.nfp_fl_payload* %1, %struct.nfp_fl_payload** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 4, i64* %8, align 8
  %15 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %16 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %20 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %24 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %27, %28
  %30 = load i64, i64* %10, align 8
  %31 = add i64 %29, %30
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %12, align 8
  %34 = load i32, i32* @NFP_FL_LW_SIZ, align 4
  %35 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %36 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = zext i32 %34 to i64
  %40 = lshr i64 %38, %39
  store i64 %40, i64* %37, align 8
  %41 = load i32, i32* @NFP_FL_LW_SIZ, align 4
  %42 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %43 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = zext i32 %41 to i64
  %47 = lshr i64 %45, %46
  store i64 %47, i64* %44, align 8
  %48 = load i32, i32* @NFP_FL_LW_SIZ, align 4
  %49 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %50 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = zext i32 %48 to i64
  %54 = lshr i64 %52, %53
  store i64 %54, i64* %51, align 8
  %55 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.sk_buff* @nfp_flower_cmsg_alloc(%struct.nfp_app* %55, i64 %56, i32 %57, i32 %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %13, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %3
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %129

65:                                               ; preds = %3
  %66 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %67 = call i8* @nfp_flower_cmsg_get_data(%struct.sk_buff* %66)
  store i8* %67, i8** %14, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %70 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %69, i32 0, i32 0
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @memcpy(i8* %68, %struct.TYPE_2__* %70, i64 %71)
  %73 = load i8*, i8** %14, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %77 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @memcpy(i8* %75, %struct.TYPE_2__* %78, i64 %79)
  %81 = load i8*, i8** %14, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %82, %83
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %87 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @memcpy(i8* %85, %struct.TYPE_2__* %88, i64 %89)
  %91 = load i8*, i8** %14, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %92, %93
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %94, %95
  %97 = getelementptr inbounds i8, i8* %91, i64 %96
  %98 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %99 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @memcpy(i8* %97, %struct.TYPE_2__* %100, i64 %101)
  %103 = load i32, i32* @NFP_FL_LW_SIZ, align 4
  %104 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %105 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = zext i32 %103 to i64
  %109 = shl i64 %107, %108
  store i64 %109, i64* %106, align 8
  %110 = load i32, i32* @NFP_FL_LW_SIZ, align 4
  %111 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %112 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = zext i32 %110 to i64
  %116 = shl i64 %114, %115
  store i64 %116, i64* %113, align 8
  %117 = load i32, i32* @NFP_FL_LW_SIZ, align 4
  %118 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %119 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = zext i32 %117 to i64
  %123 = shl i64 %121, %122
  store i64 %123, i64* %120, align 8
  %124 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %125 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %128 = call i32 @nfp_ctrl_tx(i32 %126, %struct.sk_buff* %127)
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %65, %62
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.sk_buff* @nfp_flower_cmsg_alloc(%struct.nfp_app*, i64, i32, i32) #1

declare dso_local i8* @nfp_flower_cmsg_get_data(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @nfp_ctrl_tx(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
