; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_virtio.c_cfv_alloc_and_copy_to_shm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_virtio.c_cfv_alloc_and_copy_to_shm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_info = type { i64, i8* }
%struct.cfv_info = type { i64, i64, i64, i64, i32, i32 }
%struct.sk_buff = type { i64, i32 }
%struct.scatterlist = type { i32 }
%struct.caif_payload_info = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Invalid packet len (%d > %d)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IP_HDR_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buf_info* (%struct.cfv_info*, %struct.sk_buff*, %struct.scatterlist*)* @cfv_alloc_and_copy_to_shm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buf_info* @cfv_alloc_and_copy_to_shm(%struct.cfv_info* %0, %struct.sk_buff* %1, %struct.scatterlist* %2) #0 {
  %4 = alloca %struct.buf_info*, align 8
  %5 = alloca %struct.cfv_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.caif_payload_info*, align 8
  %9 = alloca %struct.buf_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cfv_info* %0, %struct.cfv_info** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = bitcast i32* %13 to i8*
  %15 = bitcast i8* %14 to %struct.caif_payload_info*
  store %struct.caif_payload_info* %15, %struct.caif_payload_info** %8, align 8
  store %struct.buf_info* null, %struct.buf_info** %9, align 8
  %16 = load %struct.cfv_info*, %struct.cfv_info** %5, align 8
  %17 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %154

21:                                               ; preds = %3
  %22 = load %struct.cfv_info*, %struct.cfv_info** %5, align 8
  %23 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.cfv_info*, %struct.cfv_info** %5, align 8
  %30 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.cfv_info*, %struct.cfv_info** %5, align 8
  %34 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %21
  %41 = load %struct.cfv_info*, %struct.cfv_info** %5, align 8
  %42 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cfv_info*, %struct.cfv_info** %5, align 8
  %45 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.cfv_info*, %struct.cfv_info** %5, align 8
  %52 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load %struct.cfv_info*, %struct.cfv_info** %5, align 8
  %56 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @netdev_warn(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %57)
  br label %154

59:                                               ; preds = %21
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = call %struct.buf_info* @kmalloc(i32 16, i32 %60)
  store %struct.buf_info* %61, %struct.buf_info** %9, align 8
  %62 = load %struct.buf_info*, %struct.buf_info** %9, align 8
  %63 = icmp ne %struct.buf_info* %62, null
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %154

69:                                               ; preds = %59
  %70 = load %struct.cfv_info*, %struct.cfv_info** %5, align 8
  %71 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.caif_payload_info*, %struct.caif_payload_info** %8, align 8
  %74 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %72, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @IP_HDR_ALIGN, align 4
  %81 = sub nsw i32 %80, 1
  %82 = and i32 %79, %81
  store i32 %82, i32* %10, align 4
  %83 = load %struct.cfv_info*, %struct.cfv_info** %5, align 8
  %84 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.cfv_info*, %struct.cfv_info** %5, align 8
  %91 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = load %struct.buf_info*, %struct.buf_info** %9, align 8
  %98 = getelementptr inbounds %struct.buf_info, %struct.buf_info* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.cfv_info*, %struct.cfv_info** %5, align 8
  %100 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.buf_info*, %struct.buf_info** %9, align 8
  %103 = getelementptr inbounds %struct.buf_info, %struct.buf_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @gen_pool_alloc(i32 %101, i64 %104)
  %106 = inttoptr i64 %105 to i8*
  %107 = load %struct.buf_info*, %struct.buf_info** %9, align 8
  %108 = getelementptr inbounds %struct.buf_info, %struct.buf_info* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.buf_info*, %struct.buf_info** %9, align 8
  %110 = getelementptr inbounds %struct.buf_info, %struct.buf_info* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %69
  br label %154

118:                                              ; preds = %69
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = load %struct.buf_info*, %struct.buf_info** %9, align 8
  %121 = getelementptr inbounds %struct.buf_info, %struct.buf_info* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.cfv_info*, %struct.cfv_info** %5, align 8
  %124 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr i8, i8* %122, i64 %125
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr i8, i8* %126, i64 %128
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @skb_copy_bits(%struct.sk_buff* %119, i32 0, i8* %129, i64 %132)
  %134 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %135 = load %struct.buf_info*, %struct.buf_info** %9, align 8
  %136 = getelementptr inbounds %struct.buf_info, %struct.buf_info* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr i8, i8* %137, i64 %139
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.cfv_info*, %struct.cfv_info** %5, align 8
  %145 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  %148 = load %struct.cfv_info*, %struct.cfv_info** %5, align 8
  %149 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %147, %150
  %152 = call i32 @sg_init_one(%struct.scatterlist* %134, i8* %140, i64 %151)
  %153 = load %struct.buf_info*, %struct.buf_info** %9, align 8
  store %struct.buf_info* %153, %struct.buf_info** %4, align 8
  br label %157

154:                                              ; preds = %117, %68, %40, %20
  %155 = load %struct.buf_info*, %struct.buf_info** %9, align 8
  %156 = call i32 @kfree(%struct.buf_info* %155)
  store %struct.buf_info* null, %struct.buf_info** %4, align 8
  br label %157

157:                                              ; preds = %154, %118
  %158 = load %struct.buf_info*, %struct.buf_info** %4, align 8
  ret %struct.buf_info* %158
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, i64, i64) #1

declare dso_local %struct.buf_info* @kmalloc(i32, i32) #1

declare dso_local i64 @gen_pool_alloc(i32, i64) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i8*, i64) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i64) #1

declare dso_local i32 @kfree(%struct.buf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
