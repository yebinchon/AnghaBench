; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_devlink_param.c_nfp_devlink_supports_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_devlink_param.c_nfp_devlink_supports_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nfp_nsp = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to access the NSP: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*)* @nfp_devlink_supports_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_devlink_supports_params(%struct.nfp_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_pf*, align 8
  %4 = alloca %struct.nfp_nsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %3, align 8
  %7 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.nfp_nsp* @nfp_nsp_open(i32 %9)
  store %struct.nfp_nsp* %10, %struct.nfp_nsp** %4, align 8
  %11 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %12 = call i64 @IS_ERR(%struct.nfp_nsp* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.nfp_nsp* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %18 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %38

24:                                               ; preds = %1
  %25 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %26 = call i64 @nfp_nsp_has_hwinfo_lookup(%struct.nfp_nsp* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %30 = call i64 @nfp_nsp_has_hwinfo_set(%struct.nfp_nsp* %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %36 = call i32 @nfp_nsp_close(%struct.nfp_nsp* %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %32, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.nfp_nsp* @nfp_nsp_open(i32) #1

declare dso_local i64 @IS_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @PTR_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @nfp_nsp_has_hwinfo_lookup(%struct.nfp_nsp*) #1

declare dso_local i64 @nfp_nsp_has_hwinfo_set(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_nsp_close(%struct.nfp_nsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
