; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_net_dump_load_dumpspec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_net_dump_load_dumpspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_dumpspec = type { i32, i32 }
%struct.nfp_cpp = type { i32 }
%struct.nfp_rtsym_table = type { i32 }
%struct.nfp_rtsym = type { i32 }

@NFP_DUMP_SPEC_RTSYM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Debug dump specification read failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_dumpspec* @nfp_net_dump_load_dumpspec(%struct.nfp_cpp* %0, %struct.nfp_rtsym_table* %1) #0 {
  %3 = alloca %struct.nfp_dumpspec*, align 8
  %4 = alloca %struct.nfp_cpp*, align 8
  %5 = alloca %struct.nfp_rtsym_table*, align 8
  %6 = alloca %struct.nfp_rtsym*, align 8
  %7 = alloca %struct.nfp_dumpspec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %4, align 8
  store %struct.nfp_rtsym_table* %1, %struct.nfp_rtsym_table** %5, align 8
  %10 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %5, align 8
  %11 = load i32, i32* @NFP_DUMP_SPEC_RTSYM, align 4
  %12 = call %struct.nfp_rtsym* @nfp_rtsym_lookup(%struct.nfp_rtsym_table* %10, i32 %11)
  store %struct.nfp_rtsym* %12, %struct.nfp_rtsym** %6, align 8
  %13 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %6, align 8
  %14 = icmp ne %struct.nfp_rtsym* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.nfp_dumpspec* null, %struct.nfp_dumpspec** %3, align 8
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %6, align 8
  %18 = call i32 @nfp_rtsym_size(%struct.nfp_rtsym* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 8, %20
  %22 = trunc i64 %21 to i32
  %23 = call %struct.nfp_dumpspec* @vmalloc(i32 %22)
  store %struct.nfp_dumpspec* %23, %struct.nfp_dumpspec** %7, align 8
  %24 = load %struct.nfp_dumpspec*, %struct.nfp_dumpspec** %7, align 8
  %25 = icmp ne %struct.nfp_dumpspec* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  store %struct.nfp_dumpspec* null, %struct.nfp_dumpspec** %3, align 8
  br label %48

27:                                               ; preds = %16
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.nfp_dumpspec*, %struct.nfp_dumpspec** %7, align 8
  %30 = getelementptr inbounds %struct.nfp_dumpspec, %struct.nfp_dumpspec* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %32 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %6, align 8
  %33 = load %struct.nfp_dumpspec*, %struct.nfp_dumpspec** %7, align 8
  %34 = getelementptr inbounds %struct.nfp_dumpspec, %struct.nfp_dumpspec* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @nfp_rtsym_read(%struct.nfp_cpp* %31, %struct.nfp_rtsym* %32, i32 0, i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %27
  %42 = load %struct.nfp_dumpspec*, %struct.nfp_dumpspec** %7, align 8
  %43 = call i32 @vfree(%struct.nfp_dumpspec* %42)
  %44 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %45 = call i32 @nfp_warn(%struct.nfp_cpp* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store %struct.nfp_dumpspec* null, %struct.nfp_dumpspec** %3, align 8
  br label %48

46:                                               ; preds = %27
  %47 = load %struct.nfp_dumpspec*, %struct.nfp_dumpspec** %7, align 8
  store %struct.nfp_dumpspec* %47, %struct.nfp_dumpspec** %3, align 8
  br label %48

48:                                               ; preds = %46, %41, %26, %15
  %49 = load %struct.nfp_dumpspec*, %struct.nfp_dumpspec** %3, align 8
  ret %struct.nfp_dumpspec* %49
}

declare dso_local %struct.nfp_rtsym* @nfp_rtsym_lookup(%struct.nfp_rtsym_table*, i32) #1

declare dso_local i32 @nfp_rtsym_size(%struct.nfp_rtsym*) #1

declare dso_local %struct.nfp_dumpspec* @vmalloc(i32) #1

declare dso_local i32 @nfp_rtsym_read(%struct.nfp_cpp*, %struct.nfp_rtsym*, i32, i32, i32) #1

declare dso_local i32 @vfree(%struct.nfp_dumpspec*) #1

declare dso_local i32 @nfp_warn(%struct.nfp_cpp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
