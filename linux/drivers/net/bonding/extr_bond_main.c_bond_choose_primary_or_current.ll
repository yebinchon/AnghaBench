; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_choose_primary_or_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_choose_primary_or_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { i64, i32, i32 }
%struct.bonding = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BOND_LINK_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"impossible primary_reselect %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slave* (%struct.bonding*)* @bond_choose_primary_or_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slave* @bond_choose_primary_or_current(%struct.bonding* %0) #0 {
  %2 = alloca %struct.slave*, align 8
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca %struct.slave*, align 8
  %5 = alloca %struct.slave*, align 8
  store %struct.bonding* %0, %struct.bonding** %3, align 8
  %6 = load %struct.bonding*, %struct.bonding** %3, align 8
  %7 = getelementptr inbounds %struct.bonding, %struct.bonding* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.slave* @rtnl_dereference(i32 %8)
  store %struct.slave* %9, %struct.slave** %4, align 8
  %10 = load %struct.bonding*, %struct.bonding** %3, align 8
  %11 = getelementptr inbounds %struct.bonding, %struct.bonding* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.slave* @rtnl_dereference(i32 %12)
  store %struct.slave* %13, %struct.slave** %5, align 8
  %14 = load %struct.slave*, %struct.slave** %4, align 8
  %15 = icmp ne %struct.slave* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.slave*, %struct.slave** %4, align 8
  %18 = getelementptr inbounds %struct.slave, %struct.slave* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BOND_LINK_UP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16, %1
  %23 = load %struct.slave*, %struct.slave** %5, align 8
  %24 = icmp ne %struct.slave* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.slave*, %struct.slave** %5, align 8
  %27 = getelementptr inbounds %struct.slave, %struct.slave* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BOND_LINK_UP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %22
  store %struct.slave* null, %struct.slave** %2, align 8
  br label %103

32:                                               ; preds = %25
  %33 = load %struct.slave*, %struct.slave** %5, align 8
  store %struct.slave* %33, %struct.slave** %2, align 8
  br label %103

34:                                               ; preds = %16
  %35 = load %struct.bonding*, %struct.bonding** %3, align 8
  %36 = getelementptr inbounds %struct.bonding, %struct.bonding* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.bonding*, %struct.bonding** %3, align 8
  %41 = getelementptr inbounds %struct.bonding, %struct.bonding* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load %struct.slave*, %struct.slave** %4, align 8
  store %struct.slave* %42, %struct.slave** %2, align 8
  br label %103

43:                                               ; preds = %34
  %44 = load %struct.slave*, %struct.slave** %5, align 8
  %45 = icmp ne %struct.slave* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.slave*, %struct.slave** %5, align 8
  %48 = getelementptr inbounds %struct.slave, %struct.slave* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BOND_LINK_UP, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %43
  %53 = load %struct.slave*, %struct.slave** %4, align 8
  store %struct.slave* %53, %struct.slave** %2, align 8
  br label %103

54:                                               ; preds = %46
  %55 = load %struct.bonding*, %struct.bonding** %3, align 8
  %56 = getelementptr inbounds %struct.bonding, %struct.bonding* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %93 [
    i32 130, label %59
    i32 129, label %61
    i32 128, label %91
  ]

59:                                               ; preds = %54
  %60 = load %struct.slave*, %struct.slave** %4, align 8
  store %struct.slave* %60, %struct.slave** %2, align 8
  br label %103

61:                                               ; preds = %54
  %62 = load %struct.slave*, %struct.slave** %4, align 8
  %63 = getelementptr inbounds %struct.slave, %struct.slave* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.slave*, %struct.slave** %5, align 8
  %66 = getelementptr inbounds %struct.slave, %struct.slave* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load %struct.slave*, %struct.slave** %5, align 8
  store %struct.slave* %70, %struct.slave** %2, align 8
  br label %103

71:                                               ; preds = %61
  %72 = load %struct.slave*, %struct.slave** %4, align 8
  %73 = getelementptr inbounds %struct.slave, %struct.slave* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.slave*, %struct.slave** %5, align 8
  %76 = getelementptr inbounds %struct.slave, %struct.slave* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %71
  %80 = load %struct.slave*, %struct.slave** %4, align 8
  %81 = getelementptr inbounds %struct.slave, %struct.slave* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.slave*, %struct.slave** %5, align 8
  %84 = getelementptr inbounds %struct.slave, %struct.slave* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp sle i32 %82, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load %struct.slave*, %struct.slave** %5, align 8
  store %struct.slave* %88, %struct.slave** %2, align 8
  br label %103

89:                                               ; preds = %79, %71
  %90 = load %struct.slave*, %struct.slave** %4, align 8
  store %struct.slave* %90, %struct.slave** %2, align 8
  br label %103

91:                                               ; preds = %54
  %92 = load %struct.slave*, %struct.slave** %5, align 8
  store %struct.slave* %92, %struct.slave** %2, align 8
  br label %103

93:                                               ; preds = %54
  %94 = load %struct.bonding*, %struct.bonding** %3, align 8
  %95 = getelementptr inbounds %struct.bonding, %struct.bonding* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.bonding*, %struct.bonding** %3, align 8
  %98 = getelementptr inbounds %struct.bonding, %struct.bonding* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @netdev_err(i32 %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load %struct.slave*, %struct.slave** %5, align 8
  store %struct.slave* %102, %struct.slave** %2, align 8
  br label %103

103:                                              ; preds = %93, %91, %89, %87, %69, %59, %52, %39, %32, %31
  %104 = load %struct.slave*, %struct.slave** %2, align 8
  ret %struct.slave* %104
}

declare dso_local %struct.slave* @rtnl_dereference(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
