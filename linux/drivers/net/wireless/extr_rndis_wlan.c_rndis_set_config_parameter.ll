; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_set_config_parameter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_set_config_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.ndis_config_param = type { i8*, i8*, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"setting config parameter: %s, value: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"setting config parameter: %s, value: %d\0A\00", align 1
@RNDIS_OID_GEN_RNDIS_CONFIG_PARAMETER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"setting rndis config parameter failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i8*, i32, i8*)* @rndis_set_config_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_set_config_parameter(%struct.usbnet* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbnet*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ndis_config_param*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8**, align 8
  store %struct.usbnet* %0, %struct.usbnet** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 8, i32* %11, align 4
  br label %34

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %11, align 4
  br label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %186

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 40, %41
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %42, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.ndis_config_param* @kmalloc(i32 %47, i32 %48)
  store %struct.ndis_config_param* %49, %struct.ndis_config_param** %10, align 8
  %50 = load %struct.ndis_config_param*, %struct.ndis_config_param** %10, align 8
  %51 = icmp ne %struct.ndis_config_param* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %34
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %186

55:                                               ; preds = %34
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %60 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %62, i8* %63)
  br label %74

65:                                               ; preds = %55
  %66 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %67 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %69, i32 %72)
  br label %74

74:                                               ; preds = %65, %58
  %75 = call i8* @cpu_to_le32(i32 40)
  %76 = load %struct.ndis_config_param*, %struct.ndis_config_param** %10, align 8
  %77 = getelementptr inbounds %struct.ndis_config_param, %struct.ndis_config_param* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i8* @cpu_to_le32(i32 %78)
  %80 = load %struct.ndis_config_param*, %struct.ndis_config_param** %10, align 8
  %81 = getelementptr inbounds %struct.ndis_config_param, %struct.ndis_config_param* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = load %struct.ndis_config_param*, %struct.ndis_config_param** %10, align 8
  %85 = getelementptr inbounds %struct.ndis_config_param, %struct.ndis_config_param* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 40, %87
  %89 = trunc i64 %88 to i32
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = load %struct.ndis_config_param*, %struct.ndis_config_param** %10, align 8
  %92 = getelementptr inbounds %struct.ndis_config_param, %struct.ndis_config_param* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = load %struct.ndis_config_param*, %struct.ndis_config_param** %10, align 8
  %96 = getelementptr inbounds %struct.ndis_config_param, %struct.ndis_config_param* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  %97 = load %struct.ndis_config_param*, %struct.ndis_config_param** %10, align 8
  %98 = bitcast %struct.ndis_config_param* %97 to i8*
  %99 = getelementptr i8, i8* %98, i64 40
  %100 = bitcast i8* %99 to i32*
  store i32* %100, i32** %16, align 8
  store i32 0, i32* %15, align 4
  br label %101

101:                                              ; preds = %119, %74
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = udiv i64 %105, 4
  %107 = icmp ult i64 %103, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %101
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = call i32 @cpu_to_le16(i8 signext %113)
  %115 = load i32*, i32** %16, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  br label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %101

122:                                              ; preds = %101
  %123 = load i32, i32* %8, align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %155

125:                                              ; preds = %122
  %126 = load %struct.ndis_config_param*, %struct.ndis_config_param** %10, align 8
  %127 = bitcast %struct.ndis_config_param* %126 to i8*
  %128 = getelementptr i8, i8* %127, i64 40
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr i8, i8* %128, i64 %130
  %132 = bitcast i8* %131 to i32*
  store i32* %132, i32** %16, align 8
  store i32 0, i32* %15, align 4
  br label %133

133:                                              ; preds = %151, %125
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = udiv i64 %137, 4
  %139 = icmp ult i64 %135, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %133
  %141 = load i8*, i8** %9, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = call i32 @cpu_to_le16(i8 signext %145)
  %147 = load i32*, i32** %16, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %146, i32* %150, align 4
  br label %151

151:                                              ; preds = %140
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %15, align 4
  br label %133

154:                                              ; preds = %133
  br label %168

155:                                              ; preds = %122
  %156 = load %struct.ndis_config_param*, %struct.ndis_config_param** %10, align 8
  %157 = bitcast %struct.ndis_config_param* %156 to i8*
  %158 = getelementptr i8, i8* %157, i64 40
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr i8, i8* %158, i64 %160
  %162 = bitcast i8* %161 to i8**
  store i8** %162, i8*** %17, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = bitcast i8* %163 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = call i8* @cpu_to_le32(i32 %165)
  %167 = load i8**, i8*** %17, align 8
  store i8* %166, i8** %167, align 8
  br label %168

168:                                              ; preds = %155, %154
  %169 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %170 = load i32, i32* @RNDIS_OID_GEN_RNDIS_CONFIG_PARAMETER, align 4
  %171 = load %struct.ndis_config_param*, %struct.ndis_config_param** %10, align 8
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @rndis_set_oid(%struct.usbnet* %169, i32 %170, %struct.ndis_config_param* %171, i32 %172)
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %14, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %168
  %177 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %178 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %14, align 4
  %181 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %179, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %176, %168
  %183 = load %struct.ndis_config_param*, %struct.ndis_config_param** %10, align 8
  %184 = call i32 @kfree(%struct.ndis_config_param* %183)
  %185 = load i32, i32* %14, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %182, %52, %30
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.ndis_config_param* @kmalloc(i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i8 signext) #1

declare dso_local i32 @rndis_set_oid(%struct.usbnet*, i32, %struct.ndis_config_param*, i32) #1

declare dso_local i32 @kfree(%struct.ndis_config_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
