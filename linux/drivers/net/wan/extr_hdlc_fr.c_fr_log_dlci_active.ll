; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_fr_log_dlci_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_fr_log_dlci_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvc_device = type { %struct.TYPE_4__, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c"DLCI %d [%s%s%s]%s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" new\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"deleted\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvc_device*)* @fr_log_dlci_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fr_log_dlci_active(%struct.pvc_device* %0) #0 {
  %2 = alloca %struct.pvc_device*, align 8
  store %struct.pvc_device* %0, %struct.pvc_device** %2, align 8
  %3 = load %struct.pvc_device*, %struct.pvc_device** %2, align 8
  %4 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.pvc_device*, %struct.pvc_device** %2, align 8
  %7 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.pvc_device*, %struct.pvc_device** %2, align 8
  %10 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.pvc_device*, %struct.pvc_device** %2, align 8
  %15 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi i8* [ %18, %13 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %19 ]
  %22 = load %struct.pvc_device*, %struct.pvc_device** %2, align 8
  %23 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.pvc_device*, %struct.pvc_device** %2, align 8
  %28 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br label %31

31:                                               ; preds = %26, %20
  %32 = phi i1 [ false, %20 ], [ %30, %26 ]
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %35 = load %struct.pvc_device*, %struct.pvc_device** %2, align 8
  %36 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.pvc_device*, %struct.pvc_device** %2, align 8
  %41 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  br label %46

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %39
  %47 = phi i8* [ %44, %39 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %45 ]
  %48 = load %struct.pvc_device*, %struct.pvc_device** %2, align 8
  %49 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %55 = load %struct.pvc_device*, %struct.pvc_device** %2, align 8
  %56 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %46
  br label %69

61:                                               ; preds = %46
  %62 = load %struct.pvc_device*, %struct.pvc_device** %2, align 8
  %63 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  br label %69

69:                                               ; preds = %61, %60
  %70 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %60 ], [ %68, %61 ]
  %71 = call i32 @netdev_info(i32 %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %8, i8* %21, i8* %34, i8* %47, i8* %54, i8* %70)
  ret void
}

declare dso_local i32 @netdev_info(i32, i8*, i32, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
