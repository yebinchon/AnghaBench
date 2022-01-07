; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptsas.c_mptsas_refreshing_device_handles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptsas.c_mptsas_refreshing_device_handles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptsas_phyinfo = type { %struct.mptsas_portinfo* }
%struct.mptsas_portinfo = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.mptsas_devinfo = type { i64, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mptsas_phyinfo* (%struct.TYPE_8__*, %struct.mptsas_devinfo*)* @mptsas_refreshing_device_handles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mptsas_phyinfo* @mptsas_refreshing_device_handles(%struct.TYPE_8__* %0, %struct.mptsas_devinfo* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.mptsas_devinfo*, align 8
  %5 = alloca %struct.mptsas_phyinfo*, align 8
  %6 = alloca %struct.mptsas_portinfo*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.mptsas_devinfo* %1, %struct.mptsas_devinfo** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %4, align 8
  %10 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call %struct.mptsas_phyinfo* @mptsas_find_phyinfo_by_sas_address(%struct.TYPE_8__* %8, i64 %11)
  store %struct.mptsas_phyinfo* %12, %struct.mptsas_phyinfo** %5, align 8
  %13 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %5, align 8
  %14 = icmp ne %struct.mptsas_phyinfo* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %122

16:                                               ; preds = %2
  %17 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %5, align 8
  %18 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %17, i32 0, i32 0
  %19 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %18, align 8
  store %struct.mptsas_portinfo* %19, %struct.mptsas_portinfo** %6, align 8
  %20 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %21 = icmp ne %struct.mptsas_portinfo* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %122

23:                                               ; preds = %16
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %115, %23
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %30 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %118

33:                                               ; preds = %27
  %34 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %35 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %4, align 8
  %44 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %115

48:                                               ; preds = %33
  %49 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %4, align 8
  %50 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %53 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 5
  store i32 %51, i32* %59, align 8
  %60 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %4, align 8
  %61 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %64 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  store i32 %62, i32* %70, align 4
  %71 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %4, align 8
  %72 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %75 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i64 %73, i64* %81, align 8
  %82 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %4, align 8
  %83 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %86 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  store i32 %84, i32* %92, align 8
  %93 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %4, align 8
  %94 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %97 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  store i32 %95, i32* %103, align 4
  %104 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %4, align 8
  %105 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %108 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store i32 %106, i32* %114, align 8
  br label %115

115:                                              ; preds = %48, %47
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %27

118:                                              ; preds = %27
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = call i32 @mutex_unlock(i32* %120)
  br label %122

122:                                              ; preds = %118, %22, %15
  %123 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %5, align 8
  ret %struct.mptsas_phyinfo* %123
}

declare dso_local %struct.mptsas_phyinfo* @mptsas_find_phyinfo_by_sas_address(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
