; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_init_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_init_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { %struct.pt1_table* }
%struct.pt1_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@pt1_nr_tables = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt1*)* @pt1_init_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_init_tables(%struct.pt1* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt1*, align 8
  %4 = alloca %struct.pt1_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %3, align 8
  %9 = load i32, i32* @pt1_nr_tables, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %94

12:                                               ; preds = %1
  %13 = load i32, i32* @pt1_nr_tables, align 4
  %14 = call i32 @array_size(i32 %13, i32 8)
  %15 = call %struct.pt1_table* @vmalloc(i32 %14)
  store %struct.pt1_table* %15, %struct.pt1_table** %4, align 8
  %16 = load %struct.pt1_table*, %struct.pt1_table** %4, align 8
  %17 = icmp eq %struct.pt1_table* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %94

21:                                               ; preds = %12
  %22 = load %struct.pt1*, %struct.pt1** %3, align 8
  %23 = call i32 @pt1_init_table_count(%struct.pt1* %22)
  store i32 0, i32* %5, align 4
  %24 = load %struct.pt1*, %struct.pt1** %3, align 8
  %25 = load %struct.pt1_table*, %struct.pt1_table** %4, align 8
  %26 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %25, i64 0
  %27 = call i32 @pt1_init_table(%struct.pt1* %24, %struct.pt1_table* %26, i32* %7)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %78

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %48, %31
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @pt1_nr_tables, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = load %struct.pt1*, %struct.pt1** %3, align 8
  %40 = load %struct.pt1_table*, %struct.pt1_table** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %40, i64 %42
  %44 = call i32 @pt1_init_table(%struct.pt1* %39, %struct.pt1_table* %43, i32* %8)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %78

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.pt1_table*, %struct.pt1_table** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %51, i64 %54
  %56 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* %50, i8** %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %34

61:                                               ; preds = %34
  %62 = load i32, i32* %7, align 4
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = load %struct.pt1_table*, %struct.pt1_table** %4, align 8
  %65 = load i32, i32* @pt1_nr_tables, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %64, i64 %67
  %69 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* %63, i8** %71, align 8
  %72 = load %struct.pt1*, %struct.pt1** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @pt1_register_tables(%struct.pt1* %72, i32 %73)
  %75 = load %struct.pt1_table*, %struct.pt1_table** %4, align 8
  %76 = load %struct.pt1*, %struct.pt1** %3, align 8
  %77 = getelementptr inbounds %struct.pt1, %struct.pt1* %76, i32 0, i32 0
  store %struct.pt1_table* %75, %struct.pt1_table** %77, align 8
  store i32 0, i32* %2, align 4
  br label %94

78:                                               ; preds = %47, %30
  br label %79

79:                                               ; preds = %83, %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %5, align 4
  %82 = icmp ne i32 %80, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.pt1*, %struct.pt1** %3, align 8
  %85 = load %struct.pt1_table*, %struct.pt1_table** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %85, i64 %87
  %89 = call i32 @pt1_cleanup_table(%struct.pt1* %84, %struct.pt1_table* %88)
  br label %79

90:                                               ; preds = %79
  %91 = load %struct.pt1_table*, %struct.pt1_table** %4, align 8
  %92 = call i32 @vfree(%struct.pt1_table* %91)
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %61, %18, %11
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.pt1_table* @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @pt1_init_table_count(%struct.pt1*) #1

declare dso_local i32 @pt1_init_table(%struct.pt1*, %struct.pt1_table*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @pt1_register_tables(%struct.pt1*, i32) #1

declare dso_local i32 @pt1_cleanup_table(%struct.pt1*, %struct.pt1_table*) #1

declare dso_local i32 @vfree(%struct.pt1_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
