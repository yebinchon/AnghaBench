; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_report_state_hook.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_report_state_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_l3l4_hdr = type { i32, i32 }
%struct.device = type { i32 }
%struct.i2400m_tlv_hdr = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"(i2400m %p, l3l4_hdr %p, size %zu, %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"(i2400m %p, l3l4_hdr %p, size %zu, %s) = void\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, %struct.i2400m_l3l4_hdr*, i64, i8*)* @i2400m_report_state_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_report_state_hook(%struct.i2400m* %0, %struct.i2400m_l3l4_hdr* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca %struct.i2400m_l3l4_hdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.i2400m_tlv_hdr*, align 8
  %11 = alloca i64, align 8
  store %struct.i2400m* %0, %struct.i2400m** %5, align 8
  store %struct.i2400m_l3l4_hdr* %1, %struct.i2400m_l3l4_hdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %13 = call %struct.device* @i2400m_dev(%struct.i2400m* %12)
  store %struct.device* %13, %struct.device** %9, align 8
  %14 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %6, align 8
  %15 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @le16_to_cpu(i32 %16)
  store i64 %17, i64* %11, align 8
  %18 = load %struct.device*, %struct.device** %9, align 8
  %19 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %20 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @d_fnstart(i32 4, %struct.device* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %19, %struct.i2400m_l3l4_hdr* %20, i64 %21, i8* %22)
  store %struct.i2400m_tlv_hdr* null, %struct.i2400m_tlv_hdr** %10, align 8
  br label %24

24:                                               ; preds = %32, %4
  %25 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %26 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %6, align 8
  %27 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %26, i32 0, i32 0
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %10, align 8
  %30 = call %struct.i2400m_tlv_hdr* @i2400m_tlv_buffer_walk(%struct.i2400m* %25, i32* %27, i64 %28, %struct.i2400m_tlv_hdr* %29)
  store %struct.i2400m_tlv_hdr* %30, %struct.i2400m_tlv_hdr** %10, align 8
  %31 = icmp ne %struct.i2400m_tlv_hdr* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %34 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %10, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @i2400m_report_state_parse_tlv(%struct.i2400m* %33, %struct.i2400m_tlv_hdr* %34, i8* %35)
  br label %24

37:                                               ; preds = %24
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %40 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @d_fnend(i32 4, %struct.device* %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.i2400m* %39, %struct.i2400m_l3l4_hdr* %40, i64 %41, i8* %42)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_l3l4_hdr*, i64, i8*) #1

declare dso_local %struct.i2400m_tlv_hdr* @i2400m_tlv_buffer_walk(%struct.i2400m*, i32*, i64, %struct.i2400m_tlv_hdr*) #1

declare dso_local i32 @i2400m_report_state_parse_tlv(%struct.i2400m*, %struct.i2400m_tlv_hdr*, i8*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_l3l4_hdr*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
