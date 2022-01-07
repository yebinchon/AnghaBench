; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_check_cs4227.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_check_cs4227.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_5__ = type { i32 }

@IXGBE_CS4227_RETRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"semaphore failed with %d\0A\00", align 1
@IXGBE_CS4227_CHECK_DELAY = common dso_local global i32 0, align 4
@IXGBE_CS4227_SCRATCH = common dso_local global i32 0, align 4
@IXGBE_CS4227_RESET_COMPLETE = common dso_local global i64 0, align 8
@IXGBE_CS4227_RESET_PENDING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"CS4227 reset failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"semaphore failed with %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*)* @ixgbe_check_cs4227 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_check_cs4227(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %64, %1
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @IXGBE_CS4227_RETRIES, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %67

15:                                               ; preds = %11
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %19, align 8
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %22 = bitcast %struct.ixgbe_hw* %21 to %struct.ixgbe_hw.1*
  %23 = load i32, i32* %3, align 4
  %24 = call i64 %20(%struct.ixgbe_hw.1* %22, i32 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %15
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @hw_err(%struct.ixgbe_hw* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @IXGBE_CS4227_CHECK_DELAY, align 4
  %32 = call i32 @msleep(i32 %31)
  br label %64

33:                                               ; preds = %15
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %35 = load i32, i32* @IXGBE_CS4227_SCRATCH, align 4
  %36 = call i64 @ixgbe_read_cs4227(%struct.ixgbe_hw* %34, i32 %35, i64* %5)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @IXGBE_CS4227_RESET_COMPLETE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %132

44:                                               ; preds = %39, %33
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @IXGBE_CS4227_RESET_PENDING, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %44
  br label %67

52:                                               ; preds = %47
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %54 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %56, align 8
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %59 = bitcast %struct.ixgbe_hw* %58 to %struct.ixgbe_hw.0*
  %60 = load i32, i32* %3, align 4
  %61 = call i32 %57(%struct.ixgbe_hw.0* %59, i32 %60)
  %62 = load i32, i32* @IXGBE_CS4227_CHECK_DELAY, align 4
  %63 = call i32 @msleep(i32 %62)
  br label %64

64:                                               ; preds = %52, %27
  %65 = load i64, i64* %6, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %11

67:                                               ; preds = %51, %11
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @IXGBE_CS4227_RETRIES, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %73 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %75, align 8
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %78 = bitcast %struct.ixgbe_hw* %77 to %struct.ixgbe_hw.1*
  %79 = load i32, i32* %3, align 4
  %80 = call i64 %76(%struct.ixgbe_hw.1* %78, i32 %79)
  store i64 %80, i64* %4, align 8
  %81 = load i64, i64* %4, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %71
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @hw_err(%struct.ixgbe_hw* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %85)
  br label %147

87:                                               ; preds = %71
  br label %88

88:                                               ; preds = %87, %67
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %90 = call i64 @ixgbe_reset_cs4227(%struct.ixgbe_hw* %89)
  store i64 %90, i64* %4, align 8
  %91 = load i64, i64* %4, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @hw_err(%struct.ixgbe_hw* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %95)
  br label %132

97:                                               ; preds = %88
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %99 = load i32, i32* @IXGBE_CS4227_SCRATCH, align 4
  %100 = load i64, i64* @IXGBE_CS4227_RESET_PENDING, align 8
  %101 = call i64 @ixgbe_write_cs4227(%struct.ixgbe_hw* %98, i32 %99, i64 %100)
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %103 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %105, align 8
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %108 = bitcast %struct.ixgbe_hw* %107 to %struct.ixgbe_hw.0*
  %109 = load i32, i32* %3, align 4
  %110 = call i32 %106(%struct.ixgbe_hw.0* %108, i32 %109)
  %111 = call i32 @usleep_range(i32 10000, i32 12000)
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %113 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %115, align 8
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %118 = bitcast %struct.ixgbe_hw* %117 to %struct.ixgbe_hw.1*
  %119 = load i32, i32* %3, align 4
  %120 = call i64 %116(%struct.ixgbe_hw.1* %118, i32 %119)
  store i64 %120, i64* %4, align 8
  %121 = load i64, i64* %4, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %97
  %124 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %125 = load i64, i64* %4, align 8
  %126 = call i32 @hw_err(%struct.ixgbe_hw* %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %125)
  br label %147

127:                                              ; preds = %97
  %128 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %129 = load i32, i32* @IXGBE_CS4227_SCRATCH, align 4
  %130 = load i64, i64* @IXGBE_CS4227_RESET_COMPLETE, align 8
  %131 = call i64 @ixgbe_write_cs4227(%struct.ixgbe_hw* %128, i32 %129, i64 %130)
  store i64 %131, i64* %4, align 8
  br label %132

132:                                              ; preds = %127, %93, %43
  %133 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %134 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %136, align 8
  %138 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %139 = bitcast %struct.ixgbe_hw* %138 to %struct.ixgbe_hw.0*
  %140 = load i32, i32* %3, align 4
  %141 = call i32 %137(%struct.ixgbe_hw.0* %139, i32 %140)
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %143 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @msleep(i32 %145)
  br label %147

147:                                              ; preds = %132, %123, %83
  ret void
}

declare dso_local i32 @hw_err(%struct.ixgbe_hw*, i8*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @ixgbe_read_cs4227(%struct.ixgbe_hw*, i32, i64*) #1

declare dso_local i64 @ixgbe_reset_cs4227(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_write_cs4227(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
