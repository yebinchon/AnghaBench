; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cppcore.c_nfp_cpp_area_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cppcore.c_nfp_cpp_area_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp_area = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Warning: freeing busy area\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_cpp_area_free(%struct.nfp_cpp_area* %0) #0 {
  %2 = alloca %struct.nfp_cpp_area*, align 8
  store %struct.nfp_cpp_area* %0, %struct.nfp_cpp_area** %2, align 8
  %3 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %2, align 8
  %4 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %3, i32 0, i32 1
  %5 = call i64 @atomic_read(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %2, align 8
  %9 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @nfp_warn(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %2, align 8
  %14 = call i32 @nfp_cpp_area_put(%struct.nfp_cpp_area* %13)
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @nfp_warn(i32, i8*) #1

declare dso_local i32 @nfp_cpp_area_put(%struct.nfp_cpp_area*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
