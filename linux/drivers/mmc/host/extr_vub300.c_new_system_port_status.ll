; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_new_system_port_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_new_system_port_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i32, i32, i32, %struct.TYPE_4__*, i64*, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"card just inserted\0A\00", align 1
@disable_offload_processing = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"EMPTY Processing Disabled\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"card just ejected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vub300_mmc_host*)* @new_system_port_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_system_port_status(%struct.vub300_mmc_host* %0) #0 {
  %2 = alloca %struct.vub300_mmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %2, align 8
  %5 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %9 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %8, i32 0, i32 6
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 1, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  store i32 %15, i32* %4, align 4
  %16 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %17 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 16, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %25 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %58, label %31

31:                                               ; preds = %28
  %32 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %33 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %38 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %40 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* @disable_offload_processing, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %45 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %44, i32 0, i32 4
  %46 = load i64*, i64** %45, align 8
  %47 = call i32 @strncpy(i64* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 8)
  br label %53

48:                                               ; preds = %31
  %49 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %50 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %49, i32 0, i32 4
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %55 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @mmc_detect_change(i32 %56, i32 1)
  br label %78

58:                                               ; preds = %28, %1
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %66 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @dev_info(i32* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %71 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %73 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @mmc_detect_change(i32 %74, i32 0)
  br label %77

76:                                               ; preds = %61, %58
  br label %77

77:                                               ; preds = %76, %64
  br label %78

78:                                               ; preds = %77, %53
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @strncpy(i64*, i8*, i32) #1

declare dso_local i32 @mmc_detect_change(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
