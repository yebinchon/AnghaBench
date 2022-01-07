; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_rss_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_rss_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.ena_com_dev* }
%struct.ena_com_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to init RSS rc: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*)* @ena_rss_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_rss_configure(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  %6 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %6, i32 0, i32 1
  %8 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  store %struct.ena_com_dev* %8, %struct.ena_com_dev** %4, align 8
  %9 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %10 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %1
  %15 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %16 = call i32 @ena_rss_init_default(%struct.ena_adapter* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %26 = load i32, i32* @ifup, align 4
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @netif_err(%struct.ena_adapter* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %86

33:                                               ; preds = %19, %14
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %36 = call i32 @ena_com_indirect_table_set(%struct.ena_com_dev* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i1 [ false, %34 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %86

51:                                               ; preds = %44
  %52 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %53 = call i32 @ena_com_set_hash_function(%struct.ena_com_dev* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i1 [ false, %51 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %86

68:                                               ; preds = %61
  %69 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %70 = call i32 @ena_com_set_hash_ctrl(%struct.ena_com_dev* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp ne i32 %74, %76
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i1 [ false, %68 ], [ %77, %73 ]
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %86

85:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %83, %66, %49, %24
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @ena_rss_init_default(%struct.ena_adapter*) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, i32, i8*, i32) #1

declare dso_local i32 @ena_com_indirect_table_set(%struct.ena_com_dev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_set_hash_function(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_set_hash_ctrl(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
