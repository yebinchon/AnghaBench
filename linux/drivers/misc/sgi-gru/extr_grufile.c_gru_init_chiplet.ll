; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufile.c_gru_init_chiplet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufile.c_gru_init_chiplet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_state = type { i64, i32, i32, i32, i64, i64, i8*, i32, i32, i32, i32 }

@GRU_CHIPLETS_PER_BLADE = common dso_local global i32 0, align 4
@gru_base = common dso_local global i32* null, align 8
@GRU_CBR_AU = common dso_local global i32 0, align 4
@GRU_DSR_AU = common dso_local global i64 0, align 8
@MAX_ASID = common dso_local global i32 0, align 4
@gru_max_gids = common dso_local global i32 0, align 4
@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"bid %d, gid %d, vaddr %p (0x%lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gru_state*, i64, i8*, i32, i32)* @gru_init_chiplet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gru_init_chiplet(%struct.gru_state* %0, i64 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gru_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gru_state* %0, %struct.gru_state** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %12 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %11, i32 0, i32 10
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %15 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %14, i32 0, i32 9
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %19 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %22 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @GRU_CHIPLETS_PER_BLADE, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %25, %26
  %28 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %29 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load i32*, i32** @gru_base, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %36 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %39 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %42 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @GRU_CBR_AU, align 4
  %44 = icmp eq i32 %43, 64
  br i1 %44, label %45, label %46

45:                                               ; preds = %5
  br label %51

46:                                               ; preds = %5
  %47 = load i32, i32* @GRU_CBR_AU, align 4
  %48 = zext i32 %47 to i64
  %49 = shl i64 1, %48
  %50 = sub i64 %49, 1
  br label %51

51:                                               ; preds = %46, %45
  %52 = phi i64 [ -1, %45 ], [ %50, %46 ]
  %53 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %54 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %53, i32 0, i32 4
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* @GRU_DSR_AU, align 8
  %56 = shl i64 1, %55
  %57 = sub i64 %56, 1
  %58 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %59 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %58, i32 0, i32 5
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* @MAX_ASID, align 4
  %61 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %62 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 8
  %63 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %64 = call i32 @gru_tgh_flush_init(%struct.gru_state* %63)
  %65 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %66 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @gru_max_gids, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %51
  %71 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %72 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @gru_max_gids, align 4
  br label %75

75:                                               ; preds = %70, %51
  %76 = load i32, i32* @grudev, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %79 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %82 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %81, i32 0, i32 6
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %85 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @gru_dbg(i32 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %80, i8* %83, i64 %86)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @gru_tgh_flush_init(%struct.gru_state*) #1

declare dso_local i32 @gru_dbg(i32, i8*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
