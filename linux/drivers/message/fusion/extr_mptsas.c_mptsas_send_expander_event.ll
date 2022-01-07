; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptsas.c_mptsas_send_expander_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptsas.c_mptsas_send_expander_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_event_work = type { i64, i32* }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i32 }
%struct.mptsas_portinfo = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8*, %struct.mptsas_portinfo* }
%struct.TYPE_5__ = type { i8*, i8* }

@MPI_EVENT_SAS_EXP_RC_ADDED = common dso_local global i64 0, align 8
@MPI_EVENT_SAS_EXP_RC_NOT_RESPONDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_event_work*)* @mptsas_send_expander_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptsas_send_expander_event(%struct.fw_event_work* %0) #0 {
  %2 = alloca %struct.fw_event_work*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.mptsas_portinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.fw_event_work* %0, %struct.fw_event_work** %2, align 8
  %8 = load %struct.fw_event_work*, %struct.fw_event_work** %2, align 8
  %9 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  %11 = load %struct.fw_event_work*, %struct.fw_event_work** %2, align 8
  %12 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  %17 = call i32 @memcpy(i8** %6, i32* %16, i32 8)
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @le64_to_cpu(i8* %18)
  store i8* %19, i8** %6, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call %struct.mptsas_portinfo* @mptsas_find_portinfo_by_sas_address(i32* %20, i8* %21)
  store %struct.mptsas_portinfo* %22, %struct.mptsas_portinfo** %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MPI_EVENT_SAS_EXP_RC_ADDED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %101

28:                                               ; preds = %1
  %29 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %30 = icmp ne %struct.mptsas_portinfo* %29, null
  br i1 %30, label %31, label %87

31:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %80, %31
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %35 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %83

38:                                               ; preds = %32
  %39 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %40 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %41 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store %struct.mptsas_portinfo* %39, %struct.mptsas_portinfo** %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @le16_to_cpu(i32 %49)
  %51 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %52 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i8* %50, i8** %57, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i8* @le64_to_cpu(i8* %58)
  %60 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %61 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i8* %59, i8** %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @le16_to_cpu(i32 %70)
  %72 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %73 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i8* %71, i8** %79, align 8
  br label %80

80:                                               ; preds = %38
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %32

83:                                               ; preds = %32
  %84 = load i32*, i32** %3, align 8
  %85 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %86 = call i32 @mptsas_expander_refresh(i32* %84, %struct.mptsas_portinfo* %85)
  br label %100

87:                                               ; preds = %28
  %88 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %89 = icmp ne %struct.mptsas_portinfo* %88, null
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32*, i32** %3, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = call i32 @mptsas_expander_event_add(i32* %96, %struct.TYPE_7__* %97)
  br label %99

99:                                               ; preds = %95, %90, %87
  br label %100

100:                                              ; preds = %99, %83
  br label %112

101:                                              ; preds = %1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MPI_EVENT_SAS_EXP_RC_NOT_RESPONDING, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32*, i32** %3, align 8
  %109 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %110 = call i32 @mptsas_expander_delete(i32* %108, %struct.mptsas_portinfo* %109, i32 0)
  br label %111

111:                                              ; preds = %107, %101
  br label %112

112:                                              ; preds = %111, %100
  %113 = load i32*, i32** %3, align 8
  %114 = load %struct.fw_event_work*, %struct.fw_event_work** %2, align 8
  %115 = call i32 @mptsas_free_fw_event(i32* %113, %struct.fw_event_work* %114)
  ret void
}

declare dso_local i32 @memcpy(i8**, i32*, i32) #1

declare dso_local i8* @le64_to_cpu(i8*) #1

declare dso_local %struct.mptsas_portinfo* @mptsas_find_portinfo_by_sas_address(i32*, i8*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @mptsas_expander_refresh(i32*, %struct.mptsas_portinfo*) #1

declare dso_local i32 @mptsas_expander_event_add(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @mptsas_expander_delete(i32*, %struct.mptsas_portinfo*, i32) #1

declare dso_local i32 @mptsas_free_fw_event(i32*, %struct.fw_event_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
