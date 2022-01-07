; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_validate_msg_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_validate_msg_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_info = type { i32, i32, i32, i32, i32 }

@TYPE = common dso_local global i32 0, align 4
@RSVD0 = common dso_local global i32 0, align 4
@TAIL = common dso_local global i32 0, align 4
@HEAD = common dso_local global i32 0, align 4
@CONNECT_SIZE = common dso_local global i32 0, align 4
@FM10K_MBX_ERR_RSVD0 = common dso_local global i32 0, align 4
@FM10K_MBX_ERR_TAIL = common dso_local global i32 0, align 4
@FM10K_MBX_ERR_HEAD = common dso_local global i32 0, align 4
@FM10K_VFMBX_MSG_MTU = common dso_local global i32 0, align 4
@FM10K_MBX_ERR_SIZE = common dso_local global i32 0, align 4
@FM10K_MBX_ERR_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_mbx_info*)* @fm10k_mbx_validate_msg_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_mbx_validate_msg_hdr(%struct.fm10k_mbx_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_mbx_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.fm10k_mbx_info* %0, %struct.fm10k_mbx_info** %3, align 8
  %10 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %11 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %10, i32 0, i32 4
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TYPE, align 4
  %15 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RSVD0, align 4
  %19 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TAIL, align 4
  %23 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HEAD, align 4
  %27 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CONNECT_SIZE, align 4
  %31 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @FM10K_MBX_ERR_RSVD0, align 4
  store i32 %35, i32* %2, align 4
  br label %126

36:                                               ; preds = %1
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %123 [
    i32 129, label %38
    i32 130, label %47
    i32 131, label %94
    i32 128, label %107
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %41 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @FM10K_MBX_ERR_TAIL, align 4
  store i32 %45, i32* %2, align 4
  br label %126

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %36, %46
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @HEAD, align 4
  %53 = call i32 @FM10K_MSG_HDR_MASK(i32 %52)
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50, %47
  %56 = load i32, i32* @FM10K_MBX_ERR_HEAD, align 4
  store i32 %56, i32* %2, align 4
  br label %126

57:                                               ; preds = %50
  %58 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %61 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fm10k_mbx_index_len(%struct.fm10k_mbx_info* %58, i32 %59, i32 %62)
  %64 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %65 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load i32, i32* @FM10K_MBX_ERR_HEAD, align 4
  store i32 %69, i32* %2, align 4
  br label %126

70:                                               ; preds = %57
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @TAIL, align 4
  %76 = call i32 @FM10K_MSG_HDR_MASK(i32 %75)
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73, %70
  %79 = load i32, i32* @FM10K_MBX_ERR_TAIL, align 4
  store i32 %79, i32* %2, align 4
  br label %126

80:                                               ; preds = %73
  %81 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %82 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %83 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @fm10k_mbx_index_len(%struct.fm10k_mbx_info* %81, i32 %84, i32 %85)
  %87 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %88 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %125

92:                                               ; preds = %80
  %93 = load i32, i32* @FM10K_MBX_ERR_TAIL, align 4
  store i32 %93, i32* %2, align 4
  br label %126

94:                                               ; preds = %36
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @FM10K_VFMBX_MSG_MTU, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98, %94
  %105 = load i32, i32* @FM10K_MBX_ERR_SIZE, align 4
  store i32 %105, i32* %2, align 4
  br label %126

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %36, %106
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @HEAD, align 4
  %113 = call i32 @FM10K_MSG_HDR_MASK(i32 %112)
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110, %107
  %116 = load i32, i32* @FM10K_MBX_ERR_HEAD, align 4
  store i32 %116, i32* %2, align 4
  br label %126

117:                                              ; preds = %110
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* @FM10K_MBX_ERR_TAIL, align 4
  store i32 %121, i32* %2, align 4
  br label %126

122:                                              ; preds = %117
  br label %125

123:                                              ; preds = %36
  %124 = load i32, i32* @FM10K_MBX_ERR_TYPE, align 4
  store i32 %124, i32* %2, align 4
  br label %126

125:                                              ; preds = %122, %91
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %123, %120, %115, %104, %92, %78, %68, %55, %44, %34
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @FM10K_MSG_HDR_FIELD_GET(i32, i32) #1

declare dso_local i32 @FM10K_MSG_HDR_MASK(i32) #1

declare dso_local i32 @fm10k_mbx_index_len(%struct.fm10k_mbx_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
