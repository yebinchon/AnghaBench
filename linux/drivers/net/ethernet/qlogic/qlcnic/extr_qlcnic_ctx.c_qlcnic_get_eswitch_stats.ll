; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_get_eswitch_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_get_eswitch_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.__qlcnic_esw_statistics = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@QLCNIC_STATS_NOT_AVAIL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_get_eswitch_stats(%struct.qlcnic_adapter* %0, i64 %1, i64 %2, %struct.__qlcnic_esw_statistics* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__qlcnic_esw_statistics*, align 8
  %10 = alloca %struct.__qlcnic_esw_statistics, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.__qlcnic_esw_statistics* %3, %struct.__qlcnic_esw_statistics** %9, align 8
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %16 = icmp eq %struct.__qlcnic_esw_statistics* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %155

20:                                               ; preds = %4
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %155

31:                                               ; preds = %20
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp eq %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %155

39:                                               ; preds = %31
  %40 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %41 = call i32 @memset(%struct.__qlcnic_esw_statistics* %40, i32 0, i32 4)
  %42 = load i8*, i8** @QLCNIC_STATS_NOT_AVAIL, align 8
  %43 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %44 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @QLCNIC_STATS_NOT_AVAIL, align 8
  %46 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %47 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @QLCNIC_STATS_NOT_AVAIL, align 8
  %49 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %50 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @QLCNIC_STATS_NOT_AVAIL, align 8
  %52 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %53 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @QLCNIC_STATS_NOT_AVAIL, align 8
  %55 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %56 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @QLCNIC_STATS_NOT_AVAIL, align 8
  %58 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %59 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @QLCNIC_STATS_NOT_AVAIL, align 8
  %61 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %62 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %65 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  store i64 0, i64* %11, align 8
  br label %66

66:                                               ; preds = %150, %39
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %69 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %67, %72
  br i1 %73, label %74, label %153

74:                                               ; preds = %66
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %76 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %150

85:                                               ; preds = %74
  %86 = call i32 @memset(%struct.__qlcnic_esw_statistics* %10, i32 0, i32 72)
  %87 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %88 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %89 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i64 @qlcnic_get_port_stats(%struct.qlcnic_adapter* %87, i32 %94, i64 %95, %struct.__qlcnic_esw_statistics* %10)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %150

99:                                               ; preds = %85
  %100 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %10, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %103 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %102, i32 0, i32 9
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %10, i32 0, i32 8
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %107 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %106, i32 0, i32 8
  store i32 %105, i32* %107, align 8
  %108 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %109 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %108, i32 0, i32 7
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %10, i32 0, i32 7
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @QLCNIC_ADD_ESW_STATS(i8* %110, i8* %112)
  %114 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %115 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %114, i32 0, i32 6
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %10, i32 0, i32 6
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @QLCNIC_ADD_ESW_STATS(i8* %116, i8* %118)
  %120 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %121 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %120, i32 0, i32 5
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %10, i32 0, i32 5
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @QLCNIC_ADD_ESW_STATS(i8* %122, i8* %124)
  %126 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %127 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %126, i32 0, i32 4
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %10, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @QLCNIC_ADD_ESW_STATS(i8* %128, i8* %130)
  %132 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %133 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %10, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @QLCNIC_ADD_ESW_STATS(i8* %134, i8* %136)
  %138 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %139 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %10, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @QLCNIC_ADD_ESW_STATS(i8* %140, i8* %142)
  %144 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %9, align 8
  %145 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %10, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @QLCNIC_ADD_ESW_STATS(i8* %146, i8* %148)
  store i32 0, i32* %12, align 4
  br label %150

150:                                              ; preds = %99, %98, %84
  %151 = load i64, i64* %11, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %11, align 8
  br label %66

153:                                              ; preds = %66
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %153, %36, %28, %17
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @memset(%struct.__qlcnic_esw_statistics*, i32, i32) #1

declare dso_local i64 @qlcnic_get_port_stats(%struct.qlcnic_adapter*, i32, i64, %struct.__qlcnic_esw_statistics*) #1

declare dso_local i32 @QLCNIC_ADD_ESW_STATS(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
