; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_hbuf_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_hbuf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_msg_hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MEI_HDR_FMT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"empty slots = %hu.\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@MEI_SLOT_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, i8*, i64, i8*, i64)* @mei_me_hbuf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_me_hbuf_write(%struct.mei_device* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mei_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.mei_device* %0, %struct.mei_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i64, i64* %9, align 8
  %25 = and i64 %24, 3
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %23, %20, %5
  %28 = phi i1 [ true, %20 ], [ true, %5 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %134

35:                                               ; preds = %27
  %36 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %37 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** @MEI_HDR_FMT, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = bitcast i8* %40 to %struct.mei_msg_hdr*
  %42 = call i32 @MEI_HDR_PRM(%struct.mei_msg_hdr* %41)
  %43 = call i32 @dev_dbg(i32 %38, i8* %39, i32 %42)
  %44 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %45 = call i32 @mei_hbuf_empty_slots(%struct.mei_device* %44)
  store i32 %45, i32* %16, align 4
  %46 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %47 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %35
  %54 = load i32, i32* @EOVERFLOW, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %134

56:                                               ; preds = %35
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %57, %58
  %60 = call i64 @mei_data2slots(i64 %59)
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp sgt i64 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* @EMSGSIZE, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %134

68:                                               ; preds = %56
  %69 = load i8*, i8** %8, align 8
  %70 = bitcast i8* %69 to i64*
  store i64* %70, i64** %14, align 8
  store i64 0, i64* %13, align 8
  br label %71

71:                                               ; preds = %84, %68
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @MEI_SLOT_SIZE, align 8
  %75 = udiv i64 %73, %74
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %79 = load i64*, i64** %14, align 8
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @mei_me_hcbww_write(%struct.mei_device* %78, i64 %82)
  br label %84

84:                                               ; preds = %77
  %85 = load i64, i64* %13, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %13, align 8
  br label %71

87:                                               ; preds = %71
  %88 = load i8*, i8** %10, align 8
  %89 = bitcast i8* %88 to i64*
  store i64* %89, i64** %14, align 8
  store i64 0, i64* %13, align 8
  br label %90

90:                                               ; preds = %103, %87
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* @MEI_SLOT_SIZE, align 8
  %94 = udiv i64 %92, %93
  %95 = icmp ult i64 %91, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %90
  %97 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %98 = load i64*, i64** %14, align 8
  %99 = load i64, i64* %13, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @mei_me_hcbww_write(%struct.mei_device* %97, i64 %101)
  br label %103

103:                                              ; preds = %96
  %104 = load i64, i64* %13, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %13, align 8
  br label %90

106:                                              ; preds = %90
  %107 = load i64, i64* %11, align 8
  %108 = and i64 %107, 3
  store i64 %108, i64* %12, align 8
  %109 = load i64, i64* %12, align 8
  %110 = icmp ugt i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %106
  store i64 0, i64* %17, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = load i64, i64* %11, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i64, i64* %12, align 8
  %117 = sub i64 0, %116
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @memcpy(i64* %17, i32* %118, i64 %119)
  %121 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %122 = load i64, i64* %17, align 8
  %123 = call i32 @mei_me_hcbww_write(%struct.mei_device* %121, i64 %122)
  br label %124

124:                                              ; preds = %111, %106
  %125 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %126 = call i32 @mei_hcsr_set_hig(%struct.mei_device* %125)
  %127 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %128 = call i32 @mei_me_hw_is_ready(%struct.mei_device* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %124
  %131 = load i32, i32* @EIO, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %6, align 4
  br label %134

133:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %133, %130, %65, %53, %32
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @MEI_HDR_PRM(%struct.mei_msg_hdr*) #1

declare dso_local i32 @mei_hbuf_empty_slots(%struct.mei_device*) #1

declare dso_local i64 @mei_data2slots(i64) #1

declare dso_local i32 @mei_me_hcbww_write(%struct.mei_device*, i64) #1

declare dso_local i32 @memcpy(i64*, i32*, i64) #1

declare dso_local i32 @mei_hcsr_set_hig(%struct.mei_device*) #1

declare dso_local i32 @mei_me_hw_is_ready(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
