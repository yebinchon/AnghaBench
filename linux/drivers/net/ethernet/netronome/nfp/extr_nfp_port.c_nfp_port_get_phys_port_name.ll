; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_port.c_nfp_port_get_phys_port_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_port.c_nfp_port_get_phys_port_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_eth_table_port = type { i32, i32, i32 }
%struct.nfp_port = type { i32, i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"p%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"p%ds%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pf%d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pf%ds%d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"pf%dvf%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_port_get_phys_port_name(%struct.net_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nfp_eth_table_port*, align 8
  %9 = alloca %struct.nfp_port*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device* %11)
  store %struct.nfp_port* %12, %struct.nfp_port** %9, align 8
  %13 = load %struct.nfp_port*, %struct.nfp_port** %9, align 8
  %14 = icmp ne %struct.nfp_port* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %98

18:                                               ; preds = %3
  %19 = load %struct.nfp_port*, %struct.nfp_port** %9, align 8
  %20 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %86 [
    i32 129, label %22
    i32 130, label %53
    i32 128, label %76
  ]

22:                                               ; preds = %18
  %23 = load %struct.nfp_port*, %struct.nfp_port** %9, align 8
  %24 = call %struct.nfp_eth_table_port* @__nfp_port_get_eth_port(%struct.nfp_port* %23)
  store %struct.nfp_eth_table_port* %24, %struct.nfp_eth_table_port** %8, align 8
  %25 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %26 = icmp ne %struct.nfp_eth_table_port* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %98

30:                                               ; preds = %22
  %31 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %32 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %39 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %36, i64 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %10, align 4
  br label %52

42:                                               ; preds = %30
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %46 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %49 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %43, i64 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %42, %35
  br label %89

53:                                               ; preds = %18
  %54 = load %struct.nfp_port*, %struct.nfp_port** %9, align 8
  %55 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.nfp_port*, %struct.nfp_port** %9, align 8
  %62 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %59, i64 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  store i32 %64, i32* %10, align 4
  br label %75

65:                                               ; preds = %53
  %66 = load i8*, i8** %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.nfp_port*, %struct.nfp_port** %9, align 8
  %69 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nfp_port*, %struct.nfp_port** %9, align 8
  %72 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %66, i64 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %73)
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %65, %58
  br label %89

76:                                               ; preds = %18
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.nfp_port*, %struct.nfp_port** %9, align 8
  %80 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nfp_port*, %struct.nfp_port** %9, align 8
  %83 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %77, i64 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %84)
  store i32 %85, i32* %10, align 4
  br label %89

86:                                               ; preds = %18
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %98

89:                                               ; preds = %76, %75, %52
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %7, align 8
  %93 = icmp uge i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %98

97:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %94, %86, %27, %15
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device*) #1

declare dso_local %struct.nfp_eth_table_port* @__nfp_port_get_eth_port(%struct.nfp_port*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
