; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_sierra_net.c_parse_hip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_sierra_net.c_parse_hip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hip_hdr = type { i64, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SIERRA_NET_HIP_HDR_LEN = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@SIERRA_NET_HIP_EXTENDEDID = common dso_local global i32 0, align 4
@SIERRA_NET_HIP_EXT_HDR_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.hip_hdr*)* @parse_hip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_hip(i32* %0, i64 %1, %struct.hip_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hip_hdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hip_hdr* %2, %struct.hip_hdr** %7, align 8
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @SIERRA_NET_HIP_HDR_LEN, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EPROTO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %118

17:                                               ; preds = %3
  %18 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %19 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %18, i32 0, i32 1
  %20 = load i32*, i32** %8, align 8
  %21 = call i32* @save16bit(%struct.TYPE_4__* %19, i32* %20)
  store i32* %21, i32** %8, align 8
  %22 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %23 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %22, i32 0, i32 3
  %24 = load i32*, i32** %8, align 8
  %25 = call i32* @save8bit(%struct.TYPE_3__* %23, i32* %24)
  store i32* %25, i32** %8, align 8
  %26 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %27 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %26, i32 0, i32 4
  %28 = load i32*, i32** %8, align 8
  %29 = call i32* @save8bit(%struct.TYPE_3__* %27, i32* %28)
  store i32* %29, i32** %8, align 8
  %30 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %31 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 128
  store i32 %34, i32* %9, align 4
  %35 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %36 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 127
  store i32 %39, i32* %37, align 8
  %40 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %41 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SIERRA_NET_HIP_EXTENDEDID, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %48 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %51 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %17
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @SIERRA_NET_HIP_EXT_HDR_LEN, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EPROTO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %118

62:                                               ; preds = %55
  %63 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %64 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 16383
  store i32 %67, i32* %65, align 4
  %68 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %69 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %68, i32 0, i32 2
  %70 = load i32*, i32** %8, align 8
  %71 = call i32* @save16bit(%struct.TYPE_4__* %69, i32* %70)
  store i32* %71, i32** %8, align 8
  %72 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %73 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 1023
  store i32 %76, i32* %74, align 4
  %77 = load i64, i64* @SIERRA_NET_HIP_EXT_HDR_LEN, align 8
  %78 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %79 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %89

80:                                               ; preds = %17
  %81 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %82 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 2047
  store i32 %85, i32* %83, align 4
  %86 = load i64, i64* @SIERRA_NET_HIP_HDR_LEN, align 8
  %87 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %88 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %80, %62
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %94 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %98 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %92, %89
  %103 = load i64, i64* %6, align 8
  %104 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %105 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.hip_hdr*, %struct.hip_hdr** %7, align 8
  %108 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %106, %111
  %113 = icmp slt i64 %103, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %102
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %118

117:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %114, %59, %14
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32* @save16bit(%struct.TYPE_4__*, i32*) #1

declare dso_local i32* @save8bit(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
