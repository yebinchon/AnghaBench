; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_ucode_init_uint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_ucode_init_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_info = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_7__**, %struct.TYPE_6__** }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64 }
%struct.firmware_hdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"ERROR: fw hdr len\0A\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"ERROR: ucode tag:%d can not be found!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_ucode_init_uint(%struct.brcms_info* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_info*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.firmware_hdr*, align 8
  store %struct.brcms_info* %0, %struct.brcms_info** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %95, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.brcms_info*, %struct.brcms_info** %5, align 8
  %15 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %98

19:                                               ; preds = %12
  %20 = load %struct.brcms_info*, %struct.brcms_info** %5, align 8
  %21 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %23, i64 %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.firmware_hdr*
  store %struct.firmware_hdr* %30, %struct.firmware_hdr** %11, align 8
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %89, %19
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.brcms_info*, %struct.brcms_info** %5, align 8
  %34 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %32, %40
  br i1 %41, label %42, label %94

42:                                               ; preds = %31
  %43 = load %struct.firmware_hdr*, %struct.firmware_hdr** %11, align 8
  %44 = getelementptr inbounds %struct.firmware_hdr, %struct.firmware_hdr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %88

49:                                               ; preds = %42
  %50 = load %struct.brcms_info*, %struct.brcms_info** %5, align 8
  %51 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %53, i64 %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.firmware_hdr*, %struct.firmware_hdr** %11, align 8
  %61 = getelementptr inbounds %struct.firmware_hdr, %struct.firmware_hdr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  store i32* %65, i32** %10, align 8
  %66 = load %struct.firmware_hdr*, %struct.firmware_hdr** %11, align 8
  %67 = getelementptr inbounds %struct.firmware_hdr, %struct.firmware_hdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le32_to_cpu(i32 %68)
  %70 = icmp ne i32 %69, 4
  br i1 %70, label %71, label %82

71:                                               ; preds = %49
  %72 = load %struct.brcms_info*, %struct.brcms_info** %5, align 8
  %73 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, ...) @brcms_err(i32 %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @ENOMSG, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %110

82:                                               ; preds = %49
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32_to_cpu(i32 %84)
  %86 = sext i32 %85 to i64
  %87 = load i64*, i64** %6, align 8
  store i64 %86, i64* %87, align 8
  store i32 0, i32* %4, align 4
  br label %110

88:                                               ; preds = %42
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  %92 = load %struct.firmware_hdr*, %struct.firmware_hdr** %11, align 8
  %93 = getelementptr inbounds %struct.firmware_hdr, %struct.firmware_hdr* %92, i32 1
  store %struct.firmware_hdr* %93, %struct.firmware_hdr** %11, align 8
  br label %31

94:                                               ; preds = %31
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %12

98:                                               ; preds = %12
  %99 = load %struct.brcms_info*, %struct.brcms_info** %5, align 8
  %100 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 (i32, i8*, ...) @brcms_err(i32 %105, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @ENOMSG, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %98, %82, %71
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @brcms_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
