; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_parse_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_parse_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsdfec_dev = type { %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"xlnx,sdfec-code\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ldpc\00", align 1
@XSDFEC_LDPC_CODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"turbo\00", align 1
@XSDFEC_TURBO_CODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"xlnx,sdfec-din-words\00", align 1
@XSDFEC_AXIS_WORDS_INCLUDE_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"xlnx,sdfec-din-width\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"xlnx,sdfec-dout-words\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"xlnx,sdfec-dout-width\00", align 1
@XSDFEC_FEC_CODE_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xsdfec_dev*)* @xsdfec_parse_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsdfec_parse_of(%struct.xsdfec_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xsdfec_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.xsdfec_dev* %0, %struct.xsdfec_dev** %3, align 8
  %12 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %3, align 8
  %13 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %12, i32 0, i32 1
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = call i32 @of_property_read_string(%struct.device_node* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %128

24:                                               ; preds = %1
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strcasecmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @XSDFEC_LDPC_CODE, align 4
  %30 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %3, align 8
  %31 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  br label %46

33:                                               ; preds = %24
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @strcasecmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @XSDFEC_TURBO_CODE, align 4
  %39 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %3, align 8
  %40 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  br label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %128

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %28
  %47 = load %struct.device_node*, %struct.device_node** %5, align 8
  %48 = call i32 @of_property_read_u32(%struct.device_node* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64* %9)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %128

53:                                               ; preds = %46
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @XSDFEC_AXIS_WORDS_INCLUDE_MAX, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %3, align 8
  %60 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  store i64 %58, i64* %61, align 8
  br label %65

62:                                               ; preds = %53
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %128

65:                                               ; preds = %57
  %66 = load %struct.device_node*, %struct.device_node** %5, align 8
  %67 = call i32 @of_property_read_u32(%struct.device_node* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64* %8)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %128

72:                                               ; preds = %65
  %73 = load i64, i64* %8, align 8
  switch i64 %73, label %79 [
    i64 130, label %74
    i64 129, label %74
    i64 128, label %74
  ]

74:                                               ; preds = %72, %72, %72
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %3, align 8
  %77 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  store i64 %75, i64* %78, align 8
  br label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %128

82:                                               ; preds = %74
  %83 = load %struct.device_node*, %struct.device_node** %5, align 8
  %84 = call i32 @of_property_read_u32(%struct.device_node* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64* %11)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %128

89:                                               ; preds = %82
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* @XSDFEC_AXIS_WORDS_INCLUDE_MAX, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %3, align 8
  %96 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  store i64 %94, i64* %97, align 8
  br label %101

98:                                               ; preds = %89
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %128

101:                                              ; preds = %93
  %102 = load %struct.device_node*, %struct.device_node** %5, align 8
  %103 = call i32 @of_property_read_u32(%struct.device_node* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64* %10)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %128

108:                                              ; preds = %101
  %109 = load i64, i64* %10, align 8
  switch i64 %109, label %115 [
    i64 130, label %110
    i64 129, label %110
    i64 128, label %110
  ]

110:                                              ; preds = %108, %108, %108
  %111 = load i64, i64* %10, align 8
  %112 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %3, align 8
  %113 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i64 %111, i64* %114, align 8
  br label %118

115:                                              ; preds = %108
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %128

118:                                              ; preds = %110
  %119 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %3, align 8
  %120 = load i32, i32* @XSDFEC_FEC_CODE_ADDR, align 4
  %121 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %3, align 8
  %122 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @xsdfec_regwrite(%struct.xsdfec_dev* %119, i32 %120, i32 %124)
  %126 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %3, align 8
  %127 = call i32 @xsdfec_cfg_axi_streams(%struct.xsdfec_dev* %126)
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %118, %115, %106, %98, %87, %79, %70, %62, %51, %42, %22
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @xsdfec_regwrite(%struct.xsdfec_dev*, i32, i32) #1

declare dso_local i32 @xsdfec_cfg_axi_streams(%struct.xsdfec_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
