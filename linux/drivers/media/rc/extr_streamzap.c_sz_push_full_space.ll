; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_streamzap.c_sz_push_full_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_streamzap.c_sz_push_full_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.streamzap_ir = type { i32 }
%struct.ir_raw_event = type { i32, i32 }

@SZ_RESOLUTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.streamzap_ir*, i8)* @sz_push_full_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sz_push_full_space(%struct.streamzap_ir* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.streamzap_ir*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.ir_raw_event, align 4
  store %struct.streamzap_ir* %0, %struct.streamzap_ir** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = bitcast %struct.ir_raw_event* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = load i32, i32* @SZ_RESOLUTION, align 4
  %11 = mul nsw i32 %9, %10
  %12 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @SZ_RESOLUTION, align 4
  %14 = sdiv i32 %13, 2
  %15 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, %14
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %21 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @US_TO_NS(i32 %25)
  %27 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %29 = bitcast %struct.ir_raw_event* %5 to i64*
  %30 = load i64, i64* %29, align 4
  %31 = call i32 @sz_push(%struct.streamzap_ir* %28, i64 %30)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @US_TO_NS(i32) #2

declare dso_local i32 @sz_push(%struct.streamzap_ir*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
