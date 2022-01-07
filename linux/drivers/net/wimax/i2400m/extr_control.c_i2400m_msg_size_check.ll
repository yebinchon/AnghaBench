; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_msg_size_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_msg_size_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_l3l4_hdr = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"(i2400m %p l3l4_hdr %p msg_size %zu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"bad size for message header (expected at least %zu, got %zu)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"bad size for message code 0x%04x (expected %zu, got %zu)\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"(i2400m %p l3l4_hdr %p msg_size %zu) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_msg_size_check(%struct.i2400m* %0, %struct.i2400m_l3l4_hdr* %1, i64 %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.i2400m_l3l4_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store %struct.i2400m_l3l4_hdr* %1, %struct.i2400m_l3l4_hdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %11 = call %struct.device* @i2400m_dev(%struct.i2400m* %10)
  store %struct.device* %11, %struct.device** %8, align 8
  %12 = load %struct.device*, %struct.device** %8, align 8
  %13 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %14 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @d_fnstart(i32 4, %struct.device* %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %13, %struct.i2400m_l3l4_hdr* %14, i64 %15)
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %17, 8
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 8, i64 %21)
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %48

25:                                               ; preds = %3
  %26 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 8
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %25
  %36 = load %struct.device*, %struct.device** %8, align 8
  %37 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %5, align 8
  %38 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %40, i64 %41, i64 %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %47

46:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %35
  br label %48

48:                                               ; preds = %47, %19
  %49 = load %struct.device*, %struct.device** %8, align 8
  %50 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %51 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @d_fnend(i32 4, %struct.device* %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), %struct.i2400m* %50, %struct.i2400m_l3l4_hdr* %51, i64 %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_l3l4_hdr*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i64, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_l3l4_hdr*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
