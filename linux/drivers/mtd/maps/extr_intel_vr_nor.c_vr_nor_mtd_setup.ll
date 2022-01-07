; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_intel_vr_nor.c_vr_nor_mtd_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_intel_vr_nor.c_vr_nor_mtd_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_nor_mtd = type { %struct.TYPE_5__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@vr_nor_mtd_setup.probe_types = internal constant [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [10 x i8] c"cfi_probe\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"jedec_probe\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vr_nor_mtd*)* @vr_nor_mtd_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr_nor_mtd_setup(%struct.vr_nor_mtd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vr_nor_mtd*, align 8
  %4 = alloca i8**, align 8
  store %struct.vr_nor_mtd* %0, %struct.vr_nor_mtd** %3, align 8
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @vr_nor_mtd_setup.probe_types, i64 0, i64 0), i8*** %4, align 8
  br label %5

5:                                                ; preds = %24, %1
  %6 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %3, align 8
  %7 = getelementptr inbounds %struct.vr_nor_mtd, %struct.vr_nor_mtd* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi i1 [ false, %5 ], [ %13, %10 ]
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %3, align 8
  %20 = getelementptr inbounds %struct.vr_nor_mtd, %struct.vr_nor_mtd* %19, i32 0, i32 2
  %21 = call %struct.TYPE_6__* @do_map_probe(i8* %18, i32* %20)
  %22 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %3, align 8
  %23 = getelementptr inbounds %struct.vr_nor_mtd, %struct.vr_nor_mtd* %22, i32 0, i32 1
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %23, align 8
  br label %24

24:                                               ; preds = %16
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** %4, align 8
  br label %5

27:                                               ; preds = %14
  %28 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %3, align 8
  %29 = getelementptr inbounds %struct.vr_nor_mtd, %struct.vr_nor_mtd* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %45

35:                                               ; preds = %27
  %36 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %3, align 8
  %37 = getelementptr inbounds %struct.vr_nor_mtd, %struct.vr_nor_mtd* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %3, align 8
  %41 = getelementptr inbounds %struct.vr_nor_mtd, %struct.vr_nor_mtd* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32* %39, i32** %44, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %35, %32
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_6__* @do_map_probe(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
