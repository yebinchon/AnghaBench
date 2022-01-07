; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_zaurus.c_blan_mdlm_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_zaurus.c_blan_mdlm_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.usb_interface = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.usb_cdc_mdlm_desc = type { i32, i32 }
%struct.usb_cdc_mdlm_detail_desc = type { i32, i32*, i32 }

@USB_DT_CS_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"extra MDLM\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"MDLM len %u\0A\00", align 1
@blan_guid = common dso_local global i32 0, align 4
@safe_guid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"MDLM guid\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"extra MDLM detail\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"bad MDLM detail, %d %d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"missing cdc mdlm %s%sdescriptor\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"func \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"detail \00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"unsupported MDLM descriptors\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @blan_mdlm_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blan_mdlm_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_cdc_mdlm_desc*, align 8
  %9 = alloca %struct.usb_cdc_mdlm_detail_desc*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  store %struct.usb_cdc_mdlm_desc* null, %struct.usb_cdc_mdlm_desc** %8, align 8
  store %struct.usb_cdc_mdlm_detail_desc* null, %struct.usb_cdc_mdlm_detail_desc** %9, align 8
  br label %20

20:                                               ; preds = %152, %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 3
  br i1 %22, label %23, label %164

23:                                               ; preds = %20
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @USB_DT_CS_INTERFACE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %152

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %151 [
    i32 128, label %34
    i32 129, label %74
  ]

34:                                               ; preds = %30
  %35 = load %struct.usb_cdc_mdlm_desc*, %struct.usb_cdc_mdlm_desc** %8, align 8
  %36 = icmp ne %struct.usb_cdc_mdlm_desc* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %38, i32 0, i32 0
  %40 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %186

41:                                               ; preds = %34
  %42 = load i32*, i32** %6, align 8
  %43 = bitcast i32* %42 to i8*
  %44 = bitcast i8* %43 to %struct.usb_cdc_mdlm_desc*
  store %struct.usb_cdc_mdlm_desc* %44, %struct.usb_cdc_mdlm_desc** %8, align 8
  %45 = load %struct.usb_cdc_mdlm_desc*, %struct.usb_cdc_mdlm_desc** %8, align 8
  %46 = getelementptr inbounds %struct.usb_cdc_mdlm_desc, %struct.usb_cdc_mdlm_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 8
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %52 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %51, i32 0, i32 0
  %53 = load %struct.usb_cdc_mdlm_desc*, %struct.usb_cdc_mdlm_desc** %8, align 8
  %54 = getelementptr inbounds %struct.usb_cdc_mdlm_desc, %struct.usb_cdc_mdlm_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %186

57:                                               ; preds = %41
  %58 = load %struct.usb_cdc_mdlm_desc*, %struct.usb_cdc_mdlm_desc** %8, align 8
  %59 = getelementptr inbounds %struct.usb_cdc_mdlm_desc, %struct.usb_cdc_mdlm_desc* %58, i32 0, i32 1
  %60 = load i32, i32* @blan_guid, align 4
  %61 = call i32 @memcmp(i32* %59, i32 %60, i32 16)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.usb_cdc_mdlm_desc*, %struct.usb_cdc_mdlm_desc** %8, align 8
  %65 = getelementptr inbounds %struct.usb_cdc_mdlm_desc, %struct.usb_cdc_mdlm_desc* %64, i32 0, i32 1
  %66 = load i32, i32* @safe_guid, align 4
  %67 = call i32 @memcmp(i32* %65, i32 %66, i32 16)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %71 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %186

73:                                               ; preds = %63, %57
  br label %151

74:                                               ; preds = %30
  %75 = load %struct.usb_cdc_mdlm_detail_desc*, %struct.usb_cdc_mdlm_detail_desc** %9, align 8
  %76 = icmp ne %struct.usb_cdc_mdlm_detail_desc* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %79 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %78, i32 0, i32 0
  %80 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %186

81:                                               ; preds = %74
  %82 = load i32*, i32** %6, align 8
  %83 = bitcast i32* %82 to i8*
  %84 = bitcast i8* %83 to %struct.usb_cdc_mdlm_detail_desc*
  store %struct.usb_cdc_mdlm_detail_desc* %84, %struct.usb_cdc_mdlm_detail_desc** %9, align 8
  %85 = load %struct.usb_cdc_mdlm_detail_desc*, %struct.usb_cdc_mdlm_detail_desc** %9, align 8
  %86 = getelementptr inbounds %struct.usb_cdc_mdlm_detail_desc, %struct.usb_cdc_mdlm_detail_desc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %104 [
    i32 0, label %88
    i32 1, label %96
  ]

88:                                               ; preds = %81
  %89 = load %struct.usb_cdc_mdlm_detail_desc*, %struct.usb_cdc_mdlm_detail_desc** %9, align 8
  %90 = getelementptr inbounds %struct.usb_cdc_mdlm_detail_desc, %struct.usb_cdc_mdlm_detail_desc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = icmp ne i64 %92, 26
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %114

95:                                               ; preds = %88
  br label %105

96:                                               ; preds = %81
  %97 = load %struct.usb_cdc_mdlm_detail_desc*, %struct.usb_cdc_mdlm_detail_desc** %9, align 8
  %98 = getelementptr inbounds %struct.usb_cdc_mdlm_detail_desc, %struct.usb_cdc_mdlm_detail_desc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = icmp ne i64 %100, 27
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %114

103:                                              ; preds = %96
  br label %105

104:                                              ; preds = %81
  br label %114

105:                                              ; preds = %103, %95
  %106 = load %struct.usb_cdc_mdlm_detail_desc*, %struct.usb_cdc_mdlm_detail_desc** %9, align 8
  %107 = getelementptr inbounds %struct.usb_cdc_mdlm_detail_desc, %struct.usb_cdc_mdlm_detail_desc* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, -3
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %113, label %131

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %104, %102, %94
  %115 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %116 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %115, i32 0, i32 0
  %117 = load %struct.usb_cdc_mdlm_detail_desc*, %struct.usb_cdc_mdlm_detail_desc** %9, align 8
  %118 = getelementptr inbounds %struct.usb_cdc_mdlm_detail_desc, %struct.usb_cdc_mdlm_detail_desc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.usb_cdc_mdlm_detail_desc*, %struct.usb_cdc_mdlm_detail_desc** %9, align 8
  %121 = getelementptr inbounds %struct.usb_cdc_mdlm_detail_desc, %struct.usb_cdc_mdlm_detail_desc* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.usb_cdc_mdlm_detail_desc*, %struct.usb_cdc_mdlm_detail_desc** %9, align 8
  %126 = getelementptr inbounds %struct.usb_cdc_mdlm_detail_desc, %struct.usb_cdc_mdlm_detail_desc* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %119, i32 %124, i32 %129)
  br label %186

131:                                              ; preds = %105
  %132 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %133 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %132, i32 0, i32 2
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 6
  store i32 %137, i32* %135, align 4
  %138 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %139 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %138, i32 0, i32 2
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %144 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %143, i32 0, i32 2
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %142, %147
  %149 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %150 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %30, %131, %73
  br label %152

152:                                              ; preds = %151, %29
  %153 = load i32*, i32** %6, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %7, align 4
  %157 = sub nsw i32 %156, %155
  store i32 %157, i32* %7, align 4
  %158 = load i32*, i32** %6, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %6, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32* %163, i32** %6, align 8
  br label %20

164:                                              ; preds = %20
  %165 = load %struct.usb_cdc_mdlm_desc*, %struct.usb_cdc_mdlm_desc** %8, align 8
  %166 = icmp ne %struct.usb_cdc_mdlm_desc* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load %struct.usb_cdc_mdlm_detail_desc*, %struct.usb_cdc_mdlm_detail_desc** %9, align 8
  %169 = icmp ne %struct.usb_cdc_mdlm_detail_desc* %168, null
  br i1 %169, label %182, label %170

170:                                              ; preds = %167, %164
  %171 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %172 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %171, i32 0, i32 0
  %173 = load %struct.usb_cdc_mdlm_desc*, %struct.usb_cdc_mdlm_desc** %8, align 8
  %174 = icmp ne %struct.usb_cdc_mdlm_desc* %173, null
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %177 = load %struct.usb_cdc_mdlm_detail_desc*, %struct.usb_cdc_mdlm_detail_desc** %9, align 8
  %178 = icmp ne %struct.usb_cdc_mdlm_detail_desc* %177, null
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)
  %181 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %172, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %176, i8* %180)
  br label %186

182:                                              ; preds = %167
  %183 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %184 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %185 = call i32 @usbnet_get_endpoints(%struct.usbnet* %183, %struct.usb_interface* %184)
  store i32 %185, i32* %3, align 4
  br label %194

186:                                              ; preds = %170, %114, %77, %69, %50, %37
  %187 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %188 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %187, i32 0, i32 1
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = call i32 @dev_info(i32* %190, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %192 = load i32, i32* @ENODEV, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %186, %182
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @usbnet_get_endpoints(%struct.usbnet*, %struct.usb_interface*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
