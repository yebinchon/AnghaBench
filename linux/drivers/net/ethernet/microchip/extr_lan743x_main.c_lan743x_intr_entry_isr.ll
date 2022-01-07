; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_intr_entry_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_intr_entry_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_vector = type { i32, i32, i32, i32, i32 (i32, i32, i32)*, %struct.lan743x_adapter* }
%struct.lan743x_adapter = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ = common dso_local global i32 0, align 4
@INT_STS = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C = common dso_local global i32 0, align 4
@INT_STS_R2C = common dso_local global i32 0, align 4
@INT_BIT_MAS_ = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_CLEAR = common dso_local global i32 0, align 4
@INT_VEC_EN_CLR = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_MASTER_ENABLE_CLEAR = common dso_local global i32 0, align 4
@INT_EN_CLR = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK = common dso_local global i32 0, align 4
@INT_EN_SET = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_MASTER_ENABLE_SET = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_SET = common dso_local global i32 0, align 4
@INT_VEC_EN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lan743x_intr_entry_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_intr_entry_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lan743x_vector*, align 8
  %6 = alloca %struct.lan743x_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.lan743x_vector*
  store %struct.lan743x_vector* %11, %struct.lan743x_vector** %5, align 8
  %12 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %13 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %12, i32 0, i32 5
  %14 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %13, align 8
  store %struct.lan743x_adapter* %14, %struct.lan743x_adapter** %6, align 8
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %17 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %24 = load i32, i32* @INT_STS, align 4
  %25 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  br label %46

26:                                               ; preds = %2
  %27 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %28 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C, align 4
  %31 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %37 = load i32, i32* @INT_STS_R2C, align 4
  %38 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  br label %45

39:                                               ; preds = %26
  %40 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %41 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @INT_BIT_MAS_, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %39, %35
  br label %46

46:                                               ; preds = %45, %22
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @INT_BIT_MAS_, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %159

52:                                               ; preds = %46
  %53 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %54 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_CLEAR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %61 = load i32, i32* @INT_VEC_EN_CLR, align 4
  %62 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %63 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @INT_VEC_EN_(i32 %64)
  %66 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %60, i32 %61, i32 %65)
  br label %67

67:                                               ; preds = %59, %52
  %68 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %69 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @LAN743X_VECTOR_FLAG_MASTER_ENABLE_CLEAR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %76 = load i32, i32* @INT_EN_CLR, align 4
  %77 = load i32, i32* @INT_BIT_MAS_, align 4
  %78 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %81 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %88 = load i32, i32* @INT_EN_SET, align 4
  %89 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %87, i32 %88)
  store i32 %89, i32* %8, align 4
  br label %94

90:                                               ; preds = %79
  %91 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %92 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %90, %86
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %9, align 4
  %98 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %99 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %131

105:                                              ; preds = %94
  %106 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %107 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %106, i32 0, i32 4
  %108 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %107, align 8
  %109 = icmp ne i32 (i32, i32, i32)* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %112 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %111, i32 0, i32 4
  %113 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %112, align 8
  %114 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %115 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %119 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 %113(i32 %116, i32 %117, i32 %120)
  br label %129

122:                                              ; preds = %105
  %123 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %124 = load i32, i32* @INT_EN_CLR, align 4
  %125 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %126 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %123, i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %122, %110
  %130 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %129, %94
  %132 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %133 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @LAN743X_VECTOR_FLAG_MASTER_ENABLE_SET, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %140 = load i32, i32* @INT_EN_SET, align 4
  %141 = load i32, i32* @INT_BIT_MAS_, align 4
  %142 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %131
  %144 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %145 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_SET, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %143
  %151 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %152 = load i32, i32* @INT_VEC_EN_SET, align 4
  %153 = load %struct.lan743x_vector*, %struct.lan743x_vector** %5, align 8
  %154 = getelementptr inbounds %struct.lan743x_vector, %struct.lan743x_vector* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @INT_VEC_EN_(i32 %155)
  %157 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %151, i32 %152, i32 %156)
  br label %158

158:                                              ; preds = %150, %143
  br label %159

159:                                              ; preds = %158, %51
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @INT_VEC_EN_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
