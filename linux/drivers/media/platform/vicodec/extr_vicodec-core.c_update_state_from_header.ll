; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_update_state_from_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_update_state_from_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vicodec_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.fwht_cframe_hdr }
%struct.fwht_cframe_hdr = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vicodec_ctx*)* @update_state_from_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_state_from_header(%struct.vicodec_ctx* %0) #0 {
  %2 = alloca %struct.vicodec_ctx*, align 8
  %3 = alloca %struct.fwht_cframe_hdr*, align 8
  store %struct.vicodec_ctx* %0, %struct.vicodec_ctx** %2, align 8
  %4 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 6
  store %struct.fwht_cframe_hdr* %6, %struct.fwht_cframe_hdr** %3, align 8
  %7 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %3, align 8
  %8 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @ntohl(i32 %9)
  %11 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 5
  store i8* %10, i8** %13, align 8
  %14 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %3, align 8
  %15 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @ntohl(i32 %16)
  %18 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  store i8* %17, i8** %20, align 8
  %21 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %3, align 8
  %22 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @ntohl(i32 %23)
  %25 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i8* %24, i8** %27, align 8
  %28 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %3, align 8
  %29 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @ntohl(i32 %30)
  %32 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i8* %31, i8** %34, align 8
  %35 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %3, align 8
  %36 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @ntohl(i32 %37)
  %39 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %40 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %3, align 8
  %43 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @ntohl(i32 %44)
  %46 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  ret void
}

declare dso_local i8* @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
