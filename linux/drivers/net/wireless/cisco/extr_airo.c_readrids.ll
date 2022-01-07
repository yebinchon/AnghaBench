; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_readrids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_readrids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { i8, i32 }
%struct.TYPE_3__ = type { i32, i32, i16, i32 }

@FLAG_FLASHING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RID_CAPABILITIES = common dso_local global i16 0, align 2
@RID_CONFIG = common dso_local global i16 0, align 2
@FLAG_COMMIT = common dso_local global i32 0, align 4
@RID_SSID = common dso_local global i16 0, align 2
@RID_APLIST = common dso_local global i16 0, align 2
@RID_DRVNAME = common dso_local global i16 0, align 2
@RID_ETHERENCAP = common dso_local global i16 0, align 2
@RID_WEP_TEMP = common dso_local global i16 0, align 2
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@RID_WEP_PERM = common dso_local global i16 0, align 2
@RID_STATUS = common dso_local global i16 0, align 2
@RID_STATSDELTA = common dso_local global i16 0, align 2
@RID_STATS = common dso_local global i16 0, align 2
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RIDSIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.TYPE_3__*)* @readrids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readrids(%struct.net_device* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.airo_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.airo_info*, %struct.airo_info** %11, align 8
  store %struct.airo_info* %12, %struct.airo_info** %9, align 8
  %13 = load i32, i32* @FLAG_FLASHING, align 4
  %14 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %15 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %132

21:                                               ; preds = %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %94 [
    i32 140, label %25
    i32 139, label %27
    i32 135, label %42
    i32 131, label %44
    i32 138, label %46
    i32 137, label %48
    i32 129, label %50
    i32 130, label %59
    i32 134, label %68
    i32 132, label %70
    i32 133, label %72
    i32 136, label %74
    i32 128, label %90
  ]

25:                                               ; preds = %21
  %26 = load i16, i16* @RID_CAPABILITIES, align 2
  store i16 %26, i16* %6, align 2
  br label %97

27:                                               ; preds = %21
  %28 = load i16, i16* @RID_CONFIG, align 2
  store i16 %28, i16* %6, align 2
  %29 = load i32, i32* @FLAG_COMMIT, align 4
  %30 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %31 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %30, i32 0, i32 1
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %36 = call i32 @disable_MAC(%struct.airo_info* %35, i32 1)
  %37 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %38 = call i32 @writeConfigRid(%struct.airo_info* %37, i32 1)
  %39 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %40 = call i32 @enable_MAC(%struct.airo_info* %39, i32 1)
  br label %41

41:                                               ; preds = %34, %27
  br label %97

42:                                               ; preds = %21
  %43 = load i16, i16* @RID_SSID, align 2
  store i16 %43, i16* %6, align 2
  br label %97

44:                                               ; preds = %21
  %45 = load i16, i16* @RID_APLIST, align 2
  store i16 %45, i16* %6, align 2
  br label %97

46:                                               ; preds = %21
  %47 = load i16, i16* @RID_DRVNAME, align 2
  store i16 %47, i16* %6, align 2
  br label %97

48:                                               ; preds = %21
  %49 = load i16, i16* @RID_ETHERENCAP, align 2
  store i16 %49, i16* %6, align 2
  br label %97

50:                                               ; preds = %21
  %51 = load i16, i16* @RID_WEP_TEMP, align 2
  store i16 %51, i16* %6, align 2
  %52 = load i32, i32* @CAP_NET_ADMIN, align 4
  %53 = call i32 @capable(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %132

58:                                               ; preds = %50
  br label %97

59:                                               ; preds = %21
  %60 = load i16, i16* @RID_WEP_PERM, align 2
  store i16 %60, i16* %6, align 2
  %61 = load i32, i32* @CAP_NET_ADMIN, align 4
  %62 = call i32 @capable(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @EPERM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %132

67:                                               ; preds = %59
  br label %97

68:                                               ; preds = %21
  %69 = load i16, i16* @RID_STATUS, align 2
  store i16 %69, i16* %6, align 2
  br label %97

70:                                               ; preds = %21
  %71 = load i16, i16* @RID_STATSDELTA, align 2
  store i16 %71, i16* %6, align 2
  br label %97

72:                                               ; preds = %21
  %73 = load i16, i16* @RID_STATS, align 2
  store i16 %73, i16* %6, align 2
  br label %97

74:                                               ; preds = %21
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %79 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @min(i32 %82, i32 1)
  %84 = call i64 @copy_to_user(i32 %77, i8* %79, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load i32, i32* @EFAULT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %132

89:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %132

90:                                               ; preds = %21
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i16, i16* %92, align 4
  store i16 %93, i16* %6, align 2
  br label %97

94:                                               ; preds = %21
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %132

97:                                               ; preds = %90, %72, %70, %68, %67, %58, %48, %46, %44, %42, %41, %25
  %98 = load i64, i64* @RIDSIZE, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i8* @kmalloc(i64 %98, i32 %99)
  store i8* %100, i8** %7, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %132

105:                                              ; preds = %97
  %106 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %107 = load i16, i16* %6, align 2
  %108 = load i8*, i8** %7, align 8
  %109 = load i64, i64* @RIDSIZE, align 8
  %110 = call i32 @PC4500_readrid(%struct.airo_info* %106, i16 zeroext %107, i8* %108, i64 %109, i32 1)
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %8, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i64, i64* @RIDSIZE, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @min(i32 %118, i32 %120)
  %122 = call i64 @copy_to_user(i32 %116, i8* %117, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %105
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @kfree(i8* %125)
  %127 = load i32, i32* @EFAULT, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %132

129:                                              ; preds = %105
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 @kfree(i8* %130)
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %129, %124, %102, %94, %89, %86, %64, %55, %18
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @disable_MAC(%struct.airo_info*, i32) #1

declare dso_local i32 @writeConfigRid(%struct.airo_info*, i32) #1

declare dso_local i32 @enable_MAC(%struct.airo_info*, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @copy_to_user(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @PC4500_readrid(%struct.airo_info*, i16 zeroext, i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
