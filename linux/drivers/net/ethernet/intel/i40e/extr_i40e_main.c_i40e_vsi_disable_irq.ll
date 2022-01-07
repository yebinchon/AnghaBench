; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_disable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32, i32, %struct.TYPE_8__**, %struct.TYPE_7__**, %struct.TYPE_6__**, %struct.i40e_pf* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_pf = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.i40e_hw }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.i40e_hw = type { i32 }

@I40E_QINT_TQCTL_CAUSE_ENA_MASK = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_CAUSE_ENA_MASK = common dso_local global i32 0, align 4
@I40E_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*)* @i40e_vsi_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_vsi_disable_irq(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %8 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %9 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %8, i32 0, i32 6
  %10 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  store %struct.i40e_pf* %10, %struct.i40e_pf** %3, align 8
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 3
  store %struct.i40e_hw* %12, %struct.i40e_hw** %4, align 8
  %13 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %14 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %98, %1
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %19 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %101

22:                                               ; preds = %16
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %24 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %25 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %24, i32 0, i32 5
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %26, i64 %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @I40E_QINT_TQCTL(i32 %32)
  %34 = call i32 @rd32(%struct.i40e_hw* %23, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @I40E_QINT_TQCTL_CAUSE_ENA_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %40 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %41 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %40, i32 0, i32 5
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %42, i64 %44
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @I40E_QINT_TQCTL(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @wr32(%struct.i40e_hw* %39, i32 %49, i32 %50)
  %52 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %53 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %54 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %53, i32 0, i32 4
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %55, i64 %57
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @I40E_QINT_RQCTL(i32 %61)
  %63 = call i32 @rd32(%struct.i40e_hw* %52, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @I40E_QINT_RQCTL_CAUSE_ENA_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %69 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %70 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %69, i32 0, i32 4
  %71 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %71, i64 %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @I40E_QINT_RQCTL(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @wr32(%struct.i40e_hw* %68, i32 %78, i32 %79)
  %81 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %82 = call i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %22
  br label %98

85:                                               ; preds = %22
  %86 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %87 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %88 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %87, i32 0, i32 3
  %89 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %89, i64 %91
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @I40E_QINT_TQCTL(i32 %95)
  %97 = call i32 @wr32(%struct.i40e_hw* %86, i32 %96, i32 0)
  br label %98

98:                                               ; preds = %85, %84
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %16

101:                                              ; preds = %16
  %102 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %103 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %156

108:                                              ; preds = %101
  %109 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %110 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %128, %108
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %115 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %118 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %116, %119
  %121 = icmp slt i32 %113, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %112
  %123 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sub nsw i32 %124, 1
  %126 = call i32 @I40E_PFINT_DYN_CTLN(i32 %125)
  %127 = call i32 @wr32(%struct.i40e_hw* %123, i32 %126, i32 0)
  br label %128

128:                                              ; preds = %122
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %112

131:                                              ; preds = %112
  %132 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %133 = call i32 @i40e_flush(%struct.i40e_hw* %132)
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %152, %131
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %137 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %134
  %141 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %142 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %141, i32 0, i32 2
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @synchronize_irq(i32 %150)
  br label %152

152:                                              ; preds = %140
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %134

155:                                              ; preds = %134
  br label %171

156:                                              ; preds = %101
  %157 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %158 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %159 = call i32 @wr32(%struct.i40e_hw* %157, i32 %158, i32 0)
  %160 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %161 = load i32, i32* @I40E_PFINT_DYN_CTL0, align 4
  %162 = call i32 @wr32(%struct.i40e_hw* %160, i32 %161, i32 0)
  %163 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %164 = call i32 @i40e_flush(%struct.i40e_hw* %163)
  %165 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %166 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %165, i32 0, i32 1
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @synchronize_irq(i32 %169)
  br label %171

171:                                              ; preds = %156, %155
  ret void
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_QINT_TQCTL(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_QINT_RQCTL(i32) #1

declare dso_local i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @I40E_PFINT_DYN_CTLN(i32) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
