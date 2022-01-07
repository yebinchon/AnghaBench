; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_ctrl.c_nfp_abm_ctrl_find_rtsym.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_ctrl.c_nfp_abm_ctrl_find_rtsym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_rtsym = type { i32 }
%struct.nfp_pf = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Symbol '%s' not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Symbol '%s' wrong size: expected %u got %llu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfp_rtsym* (%struct.nfp_pf*, i8*, i32)* @nfp_abm_ctrl_find_rtsym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfp_rtsym* @nfp_abm_ctrl_find_rtsym(%struct.nfp_pf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_rtsym*, align 8
  %5 = alloca %struct.nfp_pf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_rtsym*, align 8
  store %struct.nfp_pf* %0, %struct.nfp_pf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %10 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.nfp_rtsym* @nfp_rtsym_lookup(i32 %11, i8* %12)
  store %struct.nfp_rtsym* %13, %struct.nfp_rtsym** %8, align 8
  %14 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %8, align 8
  %15 = icmp ne %struct.nfp_rtsym* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %18 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (i32, i8*, i8*, ...) @nfp_err(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.nfp_rtsym* @ERR_PTR(i32 %23)
  store %struct.nfp_rtsym* %24, %struct.nfp_rtsym** %4, align 8
  br label %44

25:                                               ; preds = %3
  %26 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %8, align 8
  %27 = call i32 @nfp_rtsym_size(%struct.nfp_rtsym* %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %32 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %8, align 8
  %37 = call i32 @nfp_rtsym_size(%struct.nfp_rtsym* %36)
  %38 = call i32 (i32, i8*, i8*, ...) @nfp_err(i32 %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %35, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.nfp_rtsym* @ERR_PTR(i32 %40)
  store %struct.nfp_rtsym* %41, %struct.nfp_rtsym** %4, align 8
  br label %44

42:                                               ; preds = %25
  %43 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %8, align 8
  store %struct.nfp_rtsym* %43, %struct.nfp_rtsym** %4, align 8
  br label %44

44:                                               ; preds = %42, %30, %16
  %45 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %4, align 8
  ret %struct.nfp_rtsym* %45
}

declare dso_local %struct.nfp_rtsym* @nfp_rtsym_lookup(i32, i8*) #1

declare dso_local i32 @nfp_err(i32, i8*, i8*, ...) #1

declare dso_local %struct.nfp_rtsym* @ERR_PTR(i32) #1

declare dso_local i32 @nfp_rtsym_size(%struct.nfp_rtsym*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
