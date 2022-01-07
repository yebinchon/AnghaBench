; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_fw_bootstrap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_fw_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32*, i32 }
%struct.firmware = type { i32, i64 }
%struct.device = type { i32 }
%struct.i2400m_bcf_hdr = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"(i2400m %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: cannot use: %d, skipping\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"(i2400m %p) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*, %struct.firmware*, i32)* @i2400m_fw_bootstrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_fw_bootstrap(%struct.i2400m* %0, %struct.firmware* %1, i32 %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.i2400m_bcf_hdr*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %11 = call %struct.device* @i2400m_dev(%struct.i2400m* %10)
  store %struct.device* %11, %struct.device** %8, align 8
  %12 = load %struct.device*, %struct.device** %8, align 8
  %13 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %14 = call i32 @d_fnstart(i32 5, %struct.device* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %13)
  %15 = load %struct.firmware*, %struct.firmware** %5, align 8
  %16 = getelementptr inbounds %struct.firmware, %struct.firmware* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.i2400m_bcf_hdr*
  store %struct.i2400m_bcf_hdr* %19, %struct.i2400m_bcf_hdr** %9, align 8
  %20 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %21 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %9, align 8
  %22 = load %struct.firmware*, %struct.firmware** %5, align 8
  %23 = getelementptr inbounds %struct.firmware, %struct.firmware* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @i2400m_fw_check(%struct.i2400m* %20, %struct.i2400m_bcf_hdr* %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %30 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %9, align 8
  %31 = load %struct.firmware*, %struct.firmware** %5, align 8
  %32 = getelementptr inbounds %struct.firmware, %struct.firmware* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @i2400m_fw_dnload(%struct.i2400m* %29, %struct.i2400m_bcf_hdr* %30, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %28, %3
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.device*, %struct.device** %8, align 8
  %41 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %42 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %36
  %47 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %48 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @kfree(i32* %49)
  %51 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %52 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  %53 = load %struct.device*, %struct.device** %8, align 8
  %54 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @d_fnend(i32 5, %struct.device* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.i2400m* %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*) #1

declare dso_local i32 @i2400m_fw_check(%struct.i2400m*, %struct.i2400m_bcf_hdr*, i32) #1

declare dso_local i32 @i2400m_fw_dnload(%struct.i2400m*, %struct.i2400m_bcf_hdr*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
