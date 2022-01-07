; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_init_boards.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_init_boards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { %struct.ddb_link* }
%struct.ddb_link = type { %struct.ddb_info* }
%struct.ddb_info = type { i32, i32 }

@DDB_MAX_LINK = common dso_local global i64 0, align 8
@BOARD_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb*)* @ddb_init_boards to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddb_init_boards(%struct.ddb* %0) #0 {
  %2 = alloca %struct.ddb*, align 8
  %3 = alloca %struct.ddb_info*, align 8
  %4 = alloca %struct.ddb_link*, align 8
  %5 = alloca i64, align 8
  store %struct.ddb* %0, %struct.ddb** %2, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %62, %1
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @DDB_MAX_LINK, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %65

10:                                               ; preds = %6
  %11 = load %struct.ddb*, %struct.ddb** %2, align 8
  %12 = getelementptr inbounds %struct.ddb, %struct.ddb* %11, i32 0, i32 0
  %13 = load %struct.ddb_link*, %struct.ddb_link** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %13, i64 %14
  store %struct.ddb_link* %15, %struct.ddb_link** %4, align 8
  %16 = load %struct.ddb_link*, %struct.ddb_link** %4, align 8
  %17 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %16, i32 0, i32 0
  %18 = load %struct.ddb_info*, %struct.ddb_info** %17, align 8
  store %struct.ddb_info* %18, %struct.ddb_info** %3, align 8
  %19 = load %struct.ddb_info*, %struct.ddb_info** %3, align 8
  %20 = icmp ne %struct.ddb_info* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %10
  br label %62

22:                                               ; preds = %10
  %23 = load %struct.ddb_info*, %struct.ddb_info** %3, align 8
  %24 = getelementptr inbounds %struct.ddb_info, %struct.ddb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %22
  %28 = load %struct.ddb*, %struct.ddb** %2, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @DDB_LINK_TAG(i64 %29)
  %31 = load i32, i32* @BOARD_CONTROL, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @ddbwritel(%struct.ddb* %28, i32 0, i32 %32)
  %34 = call i32 @msleep(i32 100)
  %35 = load %struct.ddb*, %struct.ddb** %2, align 8
  %36 = load %struct.ddb_info*, %struct.ddb_info** %3, align 8
  %37 = getelementptr inbounds %struct.ddb_info, %struct.ddb_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @DDB_LINK_TAG(i64 %39)
  %41 = load i32, i32* @BOARD_CONTROL, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @ddbwritel(%struct.ddb* %35, i32 %38, i32 %42)
  %44 = call i32 @usleep_range(i32 2000, i32 3000)
  %45 = load %struct.ddb*, %struct.ddb** %2, align 8
  %46 = load %struct.ddb_info*, %struct.ddb_info** %3, align 8
  %47 = getelementptr inbounds %struct.ddb_info, %struct.ddb_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ddb_info*, %struct.ddb_info** %3, align 8
  %50 = getelementptr inbounds %struct.ddb_info, %struct.ddb_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %48, %51
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @DDB_LINK_TAG(i64 %53)
  %55 = load i32, i32* @BOARD_CONTROL, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @ddbwritel(%struct.ddb* %45, i32 %52, i32 %56)
  %58 = call i32 @usleep_range(i32 2000, i32 3000)
  br label %59

59:                                               ; preds = %27, %22
  %60 = load %struct.ddb_link*, %struct.ddb_link** %4, align 8
  %61 = call i32 @ddb_init_tempmon(%struct.ddb_link* %60)
  br label %62

62:                                               ; preds = %59, %21
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %5, align 8
  br label %6

65:                                               ; preds = %6
  ret i32 0
}

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i32) #1

declare dso_local i32 @DDB_LINK_TAG(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ddb_init_tempmon(%struct.ddb_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
