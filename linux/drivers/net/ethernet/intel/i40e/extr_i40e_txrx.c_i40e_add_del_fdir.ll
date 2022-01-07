; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_add_del_fdir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_add_del_fdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_fdir_filter = type { i32, i32 }

@FLOW_EXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unsupported IPv4 protocol 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported flow type 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_add_del_fdir(%struct.i40e_vsi* %0, %struct.i40e_fdir_filter* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca %struct.i40e_fdir_filter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_pf*, align 8
  %9 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %5, align 8
  store %struct.i40e_fdir_filter* %1, %struct.i40e_fdir_filter** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %11 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %10, i32 0, i32 0
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  store %struct.i40e_pf* %12, %struct.i40e_pf** %8, align 8
  %13 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %6, align 8
  %14 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FLOW_EXT, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  switch i32 %18, label %70 [
    i32 129, label %19
    i32 128, label %24
    i32 130, label %29
    i32 131, label %34
  ]

19:                                               ; preds = %3
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %21 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @i40e_add_del_fdir_tcpv4(%struct.i40e_vsi* %20, %struct.i40e_fdir_filter* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  br label %81

24:                                               ; preds = %3
  %25 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %26 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @i40e_add_del_fdir_udpv4(%struct.i40e_vsi* %25, %struct.i40e_fdir_filter* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  br label %81

29:                                               ; preds = %3
  %30 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %31 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @i40e_add_del_fdir_sctpv4(%struct.i40e_vsi* %30, %struct.i40e_fdir_filter* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  br label %81

34:                                               ; preds = %3
  %35 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %6, align 8
  %36 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %58 [
    i32 133, label %38
    i32 132, label %43
    i32 134, label %48
    i32 135, label %53
  ]

38:                                               ; preds = %34
  %39 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %40 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @i40e_add_del_fdir_tcpv4(%struct.i40e_vsi* %39, %struct.i40e_fdir_filter* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  br label %69

43:                                               ; preds = %34
  %44 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %45 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @i40e_add_del_fdir_udpv4(%struct.i40e_vsi* %44, %struct.i40e_fdir_filter* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  br label %69

48:                                               ; preds = %34
  %49 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %50 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @i40e_add_del_fdir_sctpv4(%struct.i40e_vsi* %49, %struct.i40e_fdir_filter* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %69

53:                                               ; preds = %34
  %54 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %55 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @i40e_add_del_fdir_ipv4(%struct.i40e_vsi* %54, %struct.i40e_fdir_filter* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %69

58:                                               ; preds = %34
  %59 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %60 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %6, align 8
  %64 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_info(i32* %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %83

69:                                               ; preds = %53, %48, %43, %38
  br label %81

70:                                               ; preds = %3
  %71 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %72 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %6, align 8
  %76 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_info(i32* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %83

81:                                               ; preds = %69, %29, %24, %19
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %70, %58
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @i40e_add_del_fdir_tcpv4(%struct.i40e_vsi*, %struct.i40e_fdir_filter*, i32) #1

declare dso_local i32 @i40e_add_del_fdir_udpv4(%struct.i40e_vsi*, %struct.i40e_fdir_filter*, i32) #1

declare dso_local i32 @i40e_add_del_fdir_sctpv4(%struct.i40e_vsi*, %struct.i40e_fdir_filter*, i32) #1

declare dso_local i32 @i40e_add_del_fdir_ipv4(%struct.i40e_vsi*, %struct.i40e_fdir_filter*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
