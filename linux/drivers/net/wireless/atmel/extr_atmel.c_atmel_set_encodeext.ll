; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_set_encodeext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_set_encodeext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32 }
%struct.atmel_private = type { i32, i32, i32, i32*, i32*, i32 }
%struct.iw_encode_ext = type { i32, i32, i64, i32 }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_SET_TX_KEY = common dso_local global i32 0, align 4
@CIPHER_SUITE_NONE = common dso_local global i32 0, align 4
@CIPHER_SUITE_WEP_128 = common dso_local global i32 0, align 4
@CIPHER_SUITE_WEP_64 = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @atmel_set_encodeext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_set_encodeext(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.atmel_private*, align 8
  %11 = alloca %struct.iw_point*, align 8
  %12 = alloca %struct.iw_encode_ext*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %17)
  store %struct.atmel_private* %18, %struct.atmel_private** %10, align 8
  %19 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %20 = bitcast %union.iwreq_data* %19 to %struct.iw_point*
  store %struct.iw_point* %20, %struct.iw_point** %11, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %22, %struct.iw_encode_ext** %12, align 8
  %23 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %24 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %26 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %27 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %13, align 4
  %38 = icmp sgt i32 %37, 4
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %167

42:                                               ; preds = %36
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %13, align 4
  br label %49

45:                                               ; preds = %4
  %46 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %47 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %51 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 129, i32* %15, align 4
  br label %57

57:                                               ; preds = %56, %49
  %58 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %59 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IW_ENCODE_EXT_SET_TX_KEY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %67 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %69 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  store i32 %73, i32* %16, align 4
  br label %74

74:                                               ; preds = %64, %57
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %164

77:                                               ; preds = %74
  %78 = load i32, i32* %15, align 4
  switch i32 %78, label %160 [
    i32 129, label %79
    i32 128, label %87
  ]

79:                                               ; preds = %77
  %80 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %81 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  %82 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %83 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %82, i32 0, i32 2
  store i32 0, i32* %83, align 8
  %84 = load i32, i32* @CIPHER_SUITE_NONE, align 4
  %85 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %86 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  br label %163

87:                                               ; preds = %77
  %88 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %89 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 5
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %94 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 13, i32* %98, align 4
  %99 = load i32, i32* @CIPHER_SUITE_WEP_128, align 4
  %100 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %101 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 8
  %102 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %103 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %102, i32 0, i32 2
  store i32 2, i32* %103, align 8
  br label %125

104:                                              ; preds = %87
  %105 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %106 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %104
  %110 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %111 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 5, i32* %115, align 4
  %116 = load i32, i32* @CIPHER_SUITE_WEP_64, align 4
  %117 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %118 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 8
  %119 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %120 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %119, i32 0, i32 2
  store i32 1, i32* %120, align 8
  br label %124

121:                                              ; preds = %104
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %167

124:                                              ; preds = %109
  br label %125

125:                                              ; preds = %124, %92
  %126 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %127 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  %128 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %129 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @memset(i32 %134, i32 0, i32 13)
  %136 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %137 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %141 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @min(i32 %139, i32 %146)
  store i32 %147, i32* %14, align 4
  %148 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %149 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %156 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @memcpy(i32 %154, i32 %157, i32 %158)
  br label %163

160:                                              ; preds = %77
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %5, align 4
  br label %167

163:                                              ; preds = %125, %79
  br label %164

164:                                              ; preds = %163, %74
  %165 = load i32, i32* @EINPROGRESS, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %164, %160, %121, %39
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
