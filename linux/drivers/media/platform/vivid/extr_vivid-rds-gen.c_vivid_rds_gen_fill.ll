; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-rds-gen.c_vivid_rds_gen_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-rds-gen.c_vivid_rds_gen_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_rds_gen = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"%6d.%1d\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c" The Radio Data System can switch between different Radio Texts \00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"An example of Radio Text as transmitted by the Radio Data System\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vivid_rds_gen_fill(%struct.vivid_rds_gen* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vivid_rds_gen*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vivid_rds_gen* %0, %struct.vivid_rds_gen** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %8 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %7, i32 0, i32 11
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %13 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %12, i32 0, i32 0
  store i32 11893, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 29, i32 2
  %18 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %19 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %22 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %21, i32 0, i32 0
  store i32 32904, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 16, i32 3
  %27 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %28 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %20, %11
  %30 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %31 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %33 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %32, i32 0, i32 3
  store i32 0, i32* %33, align 4
  %34 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %35 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %34, i32 0, i32 4
  store i32 0, i32* %35, align 8
  %36 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %37 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %36, i32 0, i32 5
  store i32 0, i32* %37, align 4
  %38 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %39 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %38, i32 0, i32 6
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %42 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %44 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %43, i32 0, i32 8
  store i32 1, i32* %44, align 8
  %45 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %46 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = udiv i32 %48, 16
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 15
  %52 = mul i32 %51, 10
  %53 = udiv i32 %52, 16
  %54 = call i32 @snprintf(i32 %47, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %29
  %58 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %59 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strscpy(i32 %60, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %67

62:                                               ; preds = %29
  %63 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %64 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @strscpy(i32 %65, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %67

67:                                               ; preds = %62, %57
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
