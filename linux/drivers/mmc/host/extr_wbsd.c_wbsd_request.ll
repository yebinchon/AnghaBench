; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_command* }
%struct.mmc_command = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.wbsd_host = type { i32, i32, i32, i32, i32, %struct.mmc_request* }

@WBSD_FCARD_PRESENT = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%s: Data command %d is not supported by this controller\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @wbsd_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.wbsd_host*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.wbsd_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.wbsd_host* %8, %struct.wbsd_host** %5, align 8
  %9 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %10 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %9, i32 0, i32 2
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %13 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %12, i32 0, i32 5
  %14 = load %struct.mmc_request*, %struct.mmc_request** %13, align 8
  %15 = icmp ne %struct.mmc_request* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %19 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %18, i32 0, i32 0
  %20 = load %struct.mmc_command*, %struct.mmc_command** %19, align 8
  store %struct.mmc_command* %20, %struct.mmc_command** %6, align 8
  %21 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %22 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %23 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %22, i32 0, i32 5
  store %struct.mmc_request* %21, %struct.mmc_request** %23, align 8
  %24 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %25 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @WBSD_FCARD_PRESENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @ENOMEDIUM, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %34 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %106

35:                                               ; preds = %2
  %36 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %37 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %46 [
    i32 11, label %44
    i32 17, label %44
    i32 18, label %44
    i32 20, label %44
    i32 24, label %44
    i32 25, label %44
    i32 26, label %44
    i32 27, label %44
    i32 30, label %44
    i32 42, label %44
    i32 56, label %44
    i32 51, label %45
  ]

44:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  br label %59

45:                                               ; preds = %40
  br label %59

46:                                               ; preds = %40
  %47 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %48 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @mmc_hostname(i32 %49)
  %51 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %52 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pr_warn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  %57 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %58 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %106

59:                                               ; preds = %45, %44
  br label %60

60:                                               ; preds = %59, %35
  %61 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %62 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = icmp ne %struct.TYPE_2__* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %67 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %68 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = call i32 @wbsd_prepare_data(%struct.wbsd_host* %66, %struct.TYPE_2__* %69)
  %71 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %72 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %106

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %60
  %80 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %81 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %82 = call i32 @wbsd_send_command(%struct.wbsd_host* %80, %struct.mmc_command* %81)
  %83 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %84 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = icmp ne %struct.TYPE_2__* %85, null
  br i1 %86, label %87, label %105

87:                                               ; preds = %79
  %88 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %89 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %87
  %93 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %94 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %99 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %98, i32 0, i32 3
  %100 = call i32 @tasklet_schedule(i32* %99)
  br label %101

101:                                              ; preds = %97, %92
  %102 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %103 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %102, i32 0, i32 2
  %104 = call i32 @spin_unlock_bh(i32* %103)
  br label %113

105:                                              ; preds = %87, %79
  br label %106

106:                                              ; preds = %105, %77, %46, %30
  %107 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %108 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %109 = call i32 @wbsd_request_end(%struct.wbsd_host* %107, %struct.mmc_request* %108)
  %110 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %111 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %110, i32 0, i32 2
  %112 = call i32 @spin_unlock_bh(i32* %111)
  br label %113

113:                                              ; preds = %106, %101
  ret void
}

declare dso_local %struct.wbsd_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @wbsd_prepare_data(%struct.wbsd_host*, %struct.TYPE_2__*) #1

declare dso_local i32 @wbsd_send_command(%struct.wbsd_host*, %struct.mmc_command*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wbsd_request_end(%struct.wbsd_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
