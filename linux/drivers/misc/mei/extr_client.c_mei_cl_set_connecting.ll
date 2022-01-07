; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_set_connecting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_set_connecting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { %struct.mei_me_client*, i32 }
%struct.mei_me_client = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MEI_FILE_CONNECTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_cl*, %struct.mei_me_client*)* @mei_cl_set_connecting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_cl_set_connecting(%struct.mei_cl* %0, %struct.mei_me_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_cl*, align 8
  %5 = alloca %struct.mei_me_client*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %4, align 8
  store %struct.mei_me_client* %1, %struct.mei_me_client** %5, align 8
  %6 = load %struct.mei_me_client*, %struct.mei_me_client** %5, align 8
  %7 = call i32 @mei_me_cl_get(%struct.mei_me_client* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.mei_me_client*, %struct.mei_me_client** %5, align 8
  %14 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load %struct.mei_me_client*, %struct.mei_me_client** %5, align 8
  %20 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.mei_me_client*, %struct.mei_me_client** %5, align 8
  %25 = call i32 @mei_me_cl_put(%struct.mei_me_client* %24)
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %12
  %30 = load %struct.mei_me_client*, %struct.mei_me_client** %5, align 8
  %31 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %32 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %31, i32 0, i32 0
  store %struct.mei_me_client* %30, %struct.mei_me_client** %32, align 8
  %33 = load i32, i32* @MEI_FILE_CONNECTING, align 4
  %34 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %35 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %37 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %36, i32 0, i32 0
  %38 = load %struct.mei_me_client*, %struct.mei_me_client** %37, align 8
  %39 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %29, %23, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @mei_me_cl_get(%struct.mei_me_client*) #1

declare dso_local i32 @mei_me_cl_put(%struct.mei_me_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
