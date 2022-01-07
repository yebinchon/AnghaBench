; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_eot_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_eot_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosa_data = type { i32, i32, i32*, i32*, i32, i64, i32, i32, %struct.TYPE_3__*, i32, i32, %struct.channel_data*, i32 }
%struct.TYPE_3__ = type { i32, i64 (%struct.TYPE_3__*)* }
%struct.channel_data = type { i32, i64 (%struct.channel_data*, i32)* }

@TXBIT = common dso_local global i32 0, align 4
@RXBIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cosa%d: unexpected EOT interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cosa_data*, i32)* @eot_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eot_interrupt(%struct.cosa_data* %0, i32 %1) #0 {
  %3 = alloca %struct.cosa_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.channel_data*, align 8
  store %struct.cosa_data* %0, %struct.cosa_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %9 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %8, i32 0, i32 4
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = call i64 (...) @claim_dma_lock()
  store i64 %12, i64* %6, align 8
  %13 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %14 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %13, i32 0, i32 12
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @disable_dma(i32 %15)
  %17 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %18 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @clear_dma_ff(i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @release_dma_lock(i64 %21)
  %23 = load i32, i32* @TXBIT, align 4
  %24 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %25 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %24, i32 0, i32 5
  %26 = call i64 @test_bit(i32 %23, i64* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %2
  %29 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %30 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %29, i32 0, i32 11
  %31 = load %struct.channel_data*, %struct.channel_data** %30, align 8
  %32 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %33 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %31, i64 %35
  store %struct.channel_data* %36, %struct.channel_data** %7, align 8
  %37 = load %struct.channel_data*, %struct.channel_data** %7, align 8
  %38 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %37, i32 0, i32 1
  %39 = load i64 (%struct.channel_data*, i32)*, i64 (%struct.channel_data*, i32)** %38, align 8
  %40 = icmp ne i64 (%struct.channel_data*, i32)* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %28
  %42 = load %struct.channel_data*, %struct.channel_data** %7, align 8
  %43 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %42, i32 0, i32 1
  %44 = load i64 (%struct.channel_data*, i32)*, i64 (%struct.channel_data*, i32)** %43, align 8
  %45 = load %struct.channel_data*, %struct.channel_data** %7, align 8
  %46 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %47 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 4
  %49 = call i64 %44(%struct.channel_data* %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load %struct.channel_data*, %struct.channel_data** %7, align 8
  %53 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %56 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %55, i32 0, i32 9
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  br label %58

58:                                               ; preds = %51, %41
  br label %59

59:                                               ; preds = %58, %28
  br label %133

60:                                               ; preds = %2
  %61 = load i32, i32* @RXBIT, align 4
  %62 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %63 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %62, i32 0, i32 5
  %64 = call i64 @test_bit(i32 %61, i64* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %127

66:                                               ; preds = %60
  %67 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %68 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %71 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %134

75:                                               ; preds = %66
  %76 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %77 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %76, i32 0, i32 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %80 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %83 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @cosa_dma_able(%struct.TYPE_3__* %78, i32* %81, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %75
  %88 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %89 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %92 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %95 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @memcpy(i32* %90, i32* %93, i32 %96)
  br label %98

98:                                               ; preds = %87, %75
  %99 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %100 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %99, i32 0, i32 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i64 (%struct.TYPE_3__*)*, i64 (%struct.TYPE_3__*)** %102, align 8
  %104 = icmp ne i64 (%struct.TYPE_3__*)* %103, null
  br i1 %104, label %105, label %126

105:                                              ; preds = %98
  %106 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %107 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %106, i32 0, i32 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i64 (%struct.TYPE_3__*)*, i64 (%struct.TYPE_3__*)** %109, align 8
  %111 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %112 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %111, i32 0, i32 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = call i64 %110(%struct.TYPE_3__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %105
  %117 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %118 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %117, i32 0, i32 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %123 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %122, i32 0, i32 7
  %124 = call i32 @clear_bit(i32 %121, i32* %123)
  br label %125

125:                                              ; preds = %116, %105
  br label %126

126:                                              ; preds = %125, %98
  br label %132

127:                                              ; preds = %60
  %128 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %129 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @pr_notice(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %127, %126
  br label %133

133:                                              ; preds = %132, %59
  br label %134

134:                                              ; preds = %133, %74
  %135 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %136 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %135, i32 0, i32 5
  store i64 0, i64* %136, align 8
  %137 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %138 = call i32 @put_driver_status_nolock(%struct.cosa_data* %137)
  %139 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %140 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %139, i32 0, i32 4
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cosa_dma_able(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @put_driver_status_nolock(%struct.cosa_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
