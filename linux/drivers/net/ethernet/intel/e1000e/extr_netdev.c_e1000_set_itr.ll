; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_set_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_set_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i64, i32, i64, i32, i64, %struct.TYPE_2__*, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SPEED_1000 = common dso_local global i64 0, align 8
@FLAG2_DISABLE_AIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_set_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_set_itr(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %5 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SPEED_1000, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  store i32 4000, i32* %4, align 4
  br label %90

14:                                               ; preds = %1
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FLAG2_DISABLE_AIM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %90

22:                                               ; preds = %14
  %23 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @e1000_update_itr(i64 %25, i32 %28, i32 %31)
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %48

40:                                               ; preds = %22
  %41 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 128
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %46, i32 0, i32 3
  store i64 129, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %40, %22
  %49 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @e1000_update_itr(i64 %51, i32 %54, i32 %57)
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %60, i32 0, i32 5
  store i64 %59, i64* %61, align 8
  %62 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %66, label %74

66:                                               ; preds = %48
  %67 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 128
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %72, i32 0, i32 5
  store i64 129, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %66, %48
  %75 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @max(i32 %78, i32 %82)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  switch i32 %84, label %88 [
    i32 128, label %85
    i32 129, label %86
    i32 130, label %87
  ]

85:                                               ; preds = %74
  store i32 70000, i32* %4, align 4
  br label %89

86:                                               ; preds = %74
  store i32 20000, i32* %4, align 4
  br label %89

87:                                               ; preds = %74
  store i32 4000, i32* %4, align 4
  br label %89

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %87, %86, %85
  br label %90

90:                                               ; preds = %89, %21, %13
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %93 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %91, %94
  br i1 %95, label %96, label %137

96:                                               ; preds = %90
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %99 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %97, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %104 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = ashr i32 %106, 2
  %108 = add nsw i32 %105, %107
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @min(i32 %108, i32 %109)
  br label %113

111:                                              ; preds = %96
  %112 = load i32, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %102
  %114 = phi i32 [ %110, %102 ], [ %112, %111 ]
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %117 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %120 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %119, i32 0, i32 6
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 4
  %123 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %124 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %123, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %113
  %128 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %129 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %128, i32 0, i32 6
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  br label %136

132:                                              ; preds = %113
  %133 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @e1000e_write_itr(%struct.e1000_adapter* %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %127
  br label %137

137:                                              ; preds = %136, %90
  ret void
}

declare dso_local i8* @e1000_update_itr(i64, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @e1000e_write_itr(%struct.e1000_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
