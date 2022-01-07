; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_init_page_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_init_page_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.hv_netvsc_packet = type { i64, i64 }
%struct.hv_page_buffer = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, %struct.sk_buff*, %struct.hv_netvsc_packet*, %struct.hv_page_buffer*)* @init_page_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_page_array(i8* %0, i64 %1, %struct.sk_buff* %2, %struct.hv_netvsc_packet* %3, %struct.hv_page_buffer* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.hv_netvsc_packet*, align 8
  %10 = alloca %struct.hv_page_buffer*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.hv_netvsc_packet* %3, %struct.hv_netvsc_packet** %9, align 8
  store %struct.hv_page_buffer* %4, %struct.hv_page_buffer** %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %12, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @virt_to_page(i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @offset_in_page(i8* %25)
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.hv_page_buffer*, %struct.hv_page_buffer** %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds %struct.hv_page_buffer, %struct.hv_page_buffer* %28, i64 %29
  %31 = call i64 @fill_pg_buf(i32 %24, i32 %26, i64 %27, %struct.hv_page_buffer* %30)
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %9, align 8
  %36 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %9, align 8
  %39 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @virt_to_page(i8* %40)
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @offset_in_page(i8* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = call i64 @skb_headlen(%struct.sk_buff* %44)
  %46 = load %struct.hv_page_buffer*, %struct.hv_page_buffer** %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds %struct.hv_page_buffer, %struct.hv_page_buffer* %46, i64 %47
  %49 = call i64 @fill_pg_buf(i32 %41, i32 %43, i64 %45, %struct.hv_page_buffer* %48)
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %11, align 8
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %76, %5
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %15, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @skb_frag_page(i32* %64)
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @skb_frag_off(i32* %66)
  %68 = load i32*, i32** %15, align 8
  %69 = call i64 @skb_frag_size(i32* %68)
  %70 = load %struct.hv_page_buffer*, %struct.hv_page_buffer** %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds %struct.hv_page_buffer, %struct.hv_page_buffer* %70, i64 %71
  %73 = call i64 @fill_pg_buf(i32 %65, i32 %67, i64 %69, %struct.hv_page_buffer* %72)
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %11, align 8
  br label %76

76:                                               ; preds = %56
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %52

79:                                               ; preds = %52
  %80 = load i64, i64* %11, align 8
  ret i64 %80
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @fill_pg_buf(i32, i32, i64, %struct.hv_page_buffer*) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @offset_in_page(i8*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i32 @skb_frag_off(i32*) #1

declare dso_local i64 @skb_frag_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
