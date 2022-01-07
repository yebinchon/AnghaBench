; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_dev = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%union.vxlan_addr = type { i32 }
%struct.vxlan_fdb = type { i32 }
%struct.vxlan_rdst = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"add %pM -> %pIS\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_dev*, i32*, %union.vxlan_addr*, i32, i32, i32, i32, i32, i32, %struct.vxlan_fdb**)* @vxlan_fdb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_create(%struct.vxlan_dev* %0, i32* %1, %union.vxlan_addr* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, %struct.vxlan_fdb** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.vxlan_dev*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %union.vxlan_addr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.vxlan_fdb**, align 8
  %22 = alloca %struct.vxlan_rdst*, align 8
  %23 = alloca %struct.vxlan_fdb*, align 8
  %24 = alloca i32, align 4
  store %struct.vxlan_dev* %0, %struct.vxlan_dev** %12, align 8
  store i32* %1, i32** %13, align 8
  store %union.vxlan_addr* %2, %union.vxlan_addr** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store %struct.vxlan_fdb** %9, %struct.vxlan_fdb*** %21, align 8
  store %struct.vxlan_rdst* null, %struct.vxlan_rdst** %22, align 8
  %25 = load %struct.vxlan_dev*, %struct.vxlan_dev** %12, align 8
  %26 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %10
  %31 = load %struct.vxlan_dev*, %struct.vxlan_dev** %12, align 8
  %32 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.vxlan_dev*, %struct.vxlan_dev** %12, align 8
  %35 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %33, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @ENOSPC, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %11, align 4
  br label %76

42:                                               ; preds = %30, %10
  %43 = load %struct.vxlan_dev*, %struct.vxlan_dev** %12, align 8
  %44 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load %union.vxlan_addr*, %union.vxlan_addr** %14, align 8
  %48 = call i32 @netdev_dbg(i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %46, %union.vxlan_addr* %47)
  %49 = load %struct.vxlan_dev*, %struct.vxlan_dev** %12, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %20, align 4
  %54 = call %struct.vxlan_fdb* @vxlan_fdb_alloc(%struct.vxlan_dev* %49, i32* %50, i32 %51, i32 %52, i32 %53)
  store %struct.vxlan_fdb* %54, %struct.vxlan_fdb** %23, align 8
  %55 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %23, align 8
  %56 = icmp ne %struct.vxlan_fdb* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %42
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  br label %76

60:                                               ; preds = %42
  %61 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %23, align 8
  %62 = load %union.vxlan_addr*, %union.vxlan_addr** %14, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %19, align 4
  %66 = call i32 @vxlan_fdb_append(%struct.vxlan_fdb* %61, %union.vxlan_addr* %62, i32 %63, i32 %64, i32 %65, %struct.vxlan_rdst** %22)
  store i32 %66, i32* %24, align 4
  %67 = load i32, i32* %24, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %23, align 8
  %71 = call i32 @kfree(%struct.vxlan_fdb* %70)
  %72 = load i32, i32* %24, align 4
  store i32 %72, i32* %11, align 4
  br label %76

73:                                               ; preds = %60
  %74 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %23, align 8
  %75 = load %struct.vxlan_fdb**, %struct.vxlan_fdb*** %21, align 8
  store %struct.vxlan_fdb* %74, %struct.vxlan_fdb** %75, align 8
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %73, %69, %57, %39
  %77 = load i32, i32* %11, align 4
  ret i32 %77
}

declare dso_local i32 @netdev_dbg(i32, i8*, i32*, %union.vxlan_addr*) #1

declare dso_local %struct.vxlan_fdb* @vxlan_fdb_alloc(%struct.vxlan_dev*, i32*, i32, i32, i32) #1

declare dso_local i32 @vxlan_fdb_append(%struct.vxlan_fdb*, %union.vxlan_addr*, i32, i32, i32, %struct.vxlan_rdst**) #1

declare dso_local i32 @kfree(%struct.vxlan_fdb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
