; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_copy_to_send_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_copy_to_send_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netvsc_device = type { i8*, i32, i32 }
%struct.hv_netvsc_packet = type { i32, i32, i32, i64 }
%struct.rndis_message = type { i32 }
%struct.hv_page_buffer = type { i32, i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netvsc_device*, i32, i32, %struct.hv_netvsc_packet*, %struct.rndis_message*, %struct.hv_page_buffer*, i32)* @netvsc_copy_to_send_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netvsc_copy_to_send_buf(%struct.netvsc_device* %0, i32 %1, i32 %2, %struct.hv_netvsc_packet* %3, %struct.rndis_message* %4, %struct.hv_page_buffer* %5, i32 %6) #0 {
  %8 = alloca %struct.netvsc_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hv_netvsc_packet*, align 8
  %12 = alloca %struct.rndis_message*, align 8
  %13 = alloca %struct.hv_page_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.netvsc_device* %0, %struct.netvsc_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.hv_netvsc_packet* %3, %struct.hv_netvsc_packet** %11, align 8
  store %struct.rndis_message* %4, %struct.rndis_message** %12, align 8
  store %struct.hv_page_buffer* %5, %struct.hv_page_buffer** %13, align 8
  store i32 %6, i32* %14, align 4
  %24 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %25 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %30 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = mul i32 %28, %31
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %27, i64 %33
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8* %37, i8** %16, align 8
  store i32 0, i32* %18, align 4
  %38 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %11, align 8
  %39 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %7
  %43 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %11, align 8
  %44 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  br label %50

46:                                               ; preds = %7
  %47 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %11, align 8
  %48 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i32 [ %45, %42 ], [ %49, %46 ]
  store i32 %51, i32* %19, align 4
  %52 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %11, align 8
  %53 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %56 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %54, %58
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %50
  %63 = load i32, i32* %20, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %67 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %20, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load %struct.rndis_message*, %struct.rndis_message** %12, align 8
  %73 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %11, align 8
  %78 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %65, %62, %50
  store i32 0, i32* %17, align 4
  br label %82

82:                                               ; preds = %119, %81
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %19, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %122

86:                                               ; preds = %82
  %87 = load %struct.hv_page_buffer*, %struct.hv_page_buffer** %13, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.hv_page_buffer, %struct.hv_page_buffer* %87, i64 %89
  %91 = getelementptr inbounds %struct.hv_page_buffer, %struct.hv_page_buffer* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PAGE_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = call i8* @phys_to_virt(i32 %94)
  store i8* %95, i8** %21, align 8
  %96 = load %struct.hv_page_buffer*, %struct.hv_page_buffer** %13, align 8
  %97 = load i32, i32* %17, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.hv_page_buffer, %struct.hv_page_buffer* %96, i64 %98
  %100 = getelementptr inbounds %struct.hv_page_buffer, %struct.hv_page_buffer* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %22, align 4
  %102 = load %struct.hv_page_buffer*, %struct.hv_page_buffer** %13, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.hv_page_buffer, %struct.hv_page_buffer* %102, i64 %104
  %106 = getelementptr inbounds %struct.hv_page_buffer, %struct.hv_page_buffer* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %23, align 4
  %108 = load i8*, i8** %16, align 8
  %109 = load i8*, i8** %21, align 8
  %110 = load i32, i32* %22, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i32, i32* %23, align 4
  %114 = call i32 @memcpy(i8* %108, i8* %112, i32 %113)
  %115 = load i32, i32* %23, align 4
  %116 = load i8*, i8** %16, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %16, align 8
  br label %119

119:                                              ; preds = %86
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  br label %82

122:                                              ; preds = %82
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i8*, i8** %16, align 8
  %127 = load i32, i32* %18, align 4
  %128 = call i32 @memset(i8* %126, i32 0, i32 %127)
  br label %129

129:                                              ; preds = %125, %122
  ret void
}

declare dso_local i8* @phys_to_virt(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
