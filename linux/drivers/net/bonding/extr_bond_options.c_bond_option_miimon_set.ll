; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_option_miimon_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_option_miimon_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64 }
%struct.bond_opt_value = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Setting MII monitoring interval to %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Note: Updating updelay (to %d) since it is a multiple of the miimon value\0A\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"Note: Updating downdelay (to %d) since it is a multiple of the miimon value\0A\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"Note: Updating peer_notif_delay (to %d) since it is a multiple of the miimon value\0A\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"MII monitoring cannot be used with ARP monitoring - disabling ARP monitoring...\0A\00", align 1
@BOND_ARP_VALIDATE_NONE = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bonding*, %struct.bond_opt_value*)* @bond_option_miimon_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_option_miimon_set(%struct.bonding* %0, %struct.bond_opt_value* %1) #0 {
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca %struct.bond_opt_value*, align 8
  store %struct.bonding* %0, %struct.bonding** %3, align 8
  store %struct.bond_opt_value* %1, %struct.bond_opt_value** %4, align 8
  %5 = load %struct.bonding*, %struct.bonding** %3, align 8
  %6 = getelementptr inbounds %struct.bonding, %struct.bonding* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.bond_opt_value*, %struct.bond_opt_value** %4, align 8
  %9 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (%struct.TYPE_4__*, i8*, ...) @netdev_dbg(%struct.TYPE_4__* %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.bond_opt_value*, %struct.bond_opt_value** %4, align 8
  %13 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bonding*, %struct.bonding** %3, align 8
  %16 = getelementptr inbounds %struct.bonding, %struct.bonding* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.bonding*, %struct.bonding** %3, align 8
  %19 = getelementptr inbounds %struct.bonding, %struct.bonding* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load %struct.bonding*, %struct.bonding** %3, align 8
  %25 = getelementptr inbounds %struct.bonding, %struct.bonding* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.bonding*, %struct.bonding** %3, align 8
  %28 = getelementptr inbounds %struct.bonding, %struct.bonding* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bonding*, %struct.bonding** %3, align 8
  %32 = getelementptr inbounds %struct.bonding, %struct.bonding* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %30, %34
  %36 = call i32 (%struct.TYPE_4__*, i8*, ...) @netdev_dbg(%struct.TYPE_4__* %26, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %23, %2
  %38 = load %struct.bonding*, %struct.bonding** %3, align 8
  %39 = getelementptr inbounds %struct.bonding, %struct.bonding* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load %struct.bonding*, %struct.bonding** %3, align 8
  %45 = getelementptr inbounds %struct.bonding, %struct.bonding* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.bonding*, %struct.bonding** %3, align 8
  %48 = getelementptr inbounds %struct.bonding, %struct.bonding* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bonding*, %struct.bonding** %3, align 8
  %52 = getelementptr inbounds %struct.bonding, %struct.bonding* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %50, %54
  %56 = call i32 (%struct.TYPE_4__*, i8*, ...) @netdev_dbg(%struct.TYPE_4__* %46, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %43, %37
  %58 = load %struct.bonding*, %struct.bonding** %3, align 8
  %59 = getelementptr inbounds %struct.bonding, %struct.bonding* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = load %struct.bonding*, %struct.bonding** %3, align 8
  %65 = getelementptr inbounds %struct.bonding, %struct.bonding* %64, i32 0, i32 3
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.bonding*, %struct.bonding** %3, align 8
  %68 = getelementptr inbounds %struct.bonding, %struct.bonding* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bonding*, %struct.bonding** %3, align 8
  %72 = getelementptr inbounds %struct.bonding, %struct.bonding* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %70, %74
  %76 = call i32 (%struct.TYPE_4__*, i8*, ...) @netdev_dbg(%struct.TYPE_4__* %66, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %63, %57
  %78 = load %struct.bond_opt_value*, %struct.bond_opt_value** %4, align 8
  %79 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %77
  %83 = load %struct.bonding*, %struct.bonding** %3, align 8
  %84 = getelementptr inbounds %struct.bonding, %struct.bonding* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %82
  %89 = load %struct.bonding*, %struct.bonding** %3, align 8
  %90 = getelementptr inbounds %struct.bonding, %struct.bonding* %89, i32 0, i32 3
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = call i32 (%struct.TYPE_4__*, i8*, ...) @netdev_dbg(%struct.TYPE_4__* %91, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0))
  %93 = load %struct.bonding*, %struct.bonding** %3, align 8
  %94 = getelementptr inbounds %struct.bonding, %struct.bonding* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 5
  store i64 0, i64* %95, align 8
  %96 = load %struct.bonding*, %struct.bonding** %3, align 8
  %97 = getelementptr inbounds %struct.bonding, %struct.bonding* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %88
  %102 = load i64, i64* @BOND_ARP_VALIDATE_NONE, align 8
  %103 = load %struct.bonding*, %struct.bonding** %3, align 8
  %104 = getelementptr inbounds %struct.bonding, %struct.bonding* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 4
  store i64 %102, i64* %105, align 8
  br label %106

106:                                              ; preds = %101, %88
  br label %107

107:                                              ; preds = %106, %82, %77
  %108 = load %struct.bonding*, %struct.bonding** %3, align 8
  %109 = getelementptr inbounds %struct.bonding, %struct.bonding* %108, i32 0, i32 3
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IFF_UP, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %136

116:                                              ; preds = %107
  %117 = load %struct.bond_opt_value*, %struct.bond_opt_value** %4, align 8
  %118 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %116
  %122 = load %struct.bonding*, %struct.bonding** %3, align 8
  %123 = getelementptr inbounds %struct.bonding, %struct.bonding* %122, i32 0, i32 0
  %124 = call i32 @cancel_delayed_work_sync(i32* %123)
  br label %135

125:                                              ; preds = %116
  %126 = load %struct.bonding*, %struct.bonding** %3, align 8
  %127 = getelementptr inbounds %struct.bonding, %struct.bonding* %126, i32 0, i32 2
  %128 = call i32 @cancel_delayed_work_sync(i32* %127)
  %129 = load %struct.bonding*, %struct.bonding** %3, align 8
  %130 = getelementptr inbounds %struct.bonding, %struct.bonding* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.bonding*, %struct.bonding** %3, align 8
  %133 = getelementptr inbounds %struct.bonding, %struct.bonding* %132, i32 0, i32 0
  %134 = call i32 @queue_delayed_work(i32 %131, i32* %133, i32 0)
  br label %135

135:                                              ; preds = %125, %121
  br label %136

136:                                              ; preds = %135, %107
  ret i32 0
}

declare dso_local i32 @netdev_dbg(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
